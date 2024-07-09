defmodule Fhir.ConsentVerification do
  @moduledoc """
  A record of a healthcare consumer’s  choices  or choices made on their behalf by a third party, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:verificationDate, :string)
    field(:verified, :boolean)
    embeds_many(:_verificationDate, Fhir.Element)
    embeds_one(:_verified, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:verificationType, Fhir.CodeableConcept)
    embeds_one(:verifiedBy, Fhir.Reference)
    embeds_one(:verifiedWith, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          verificationDate: String.t(),
          verified: boolean(),
          _verificationDate: [Fhir.Element.t()],
          _verified: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          verificationType: Fhir.CodeableConcept.t(),
          verifiedBy: Fhir.Reference.t(),
          verifiedWith: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :verificationDate, :verified])
    |> cast_embed(:_verificationDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_verified, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:verificationType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:verifiedBy, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:verifiedWith, with: &Fhir.Reference.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:verified, [true, false])
  end

  def new(params) do
    %__MODULE__{}
    |> changeset(params)
    |> apply_action(:new)
  end

  def new!(params) do
    case new(params) do
      {:ok, val} -> val
      {:error, cs} -> raise "Invalid #{__ENV__.module}.new!(): #{inspect(cs.errors)}"
    end
  end
end
