defmodule Fhir.ExplanationOfBenefitInsurance do
  @moduledoc """
  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:focal, :boolean)
    field(:id, :string)
    field(:preAuthRef, :string)
    embeds_one(:_focal, Fhir.Element)
    embeds_many(:_preAuthRef, Fhir.Element)
    embeds_one(:coverage, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          focal: boolean(),
          id: String.t(),
          preAuthRef: String.t(),
          _focal: Fhir.Element.t(),
          _preAuthRef: [Fhir.Element.t()],
          coverage: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:focal, :id, :preAuthRef])
    |> cast_embed(:_focal, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_preAuthRef, with: &Fhir.Element.changeset/2)
    |> cast_embed(:coverage, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_inclusion(:focal, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
