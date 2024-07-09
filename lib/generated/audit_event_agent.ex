defmodule Fhir.AuditEventAgent do
  @moduledoc """
  A record of an event relevant for purposes such as operations, privacy, security, maintenance, and performance analysis.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:networkString, :string)
    field(:networkUri, :string)
    field(:policy, :string)
    field(:requestor, :boolean)
    embeds_one(:_networkString, Fhir.Element)
    embeds_one(:_networkUri, Fhir.Element)
    embeds_many(:_policy, Fhir.Element)
    embeds_one(:_requestor, Fhir.Element)
    embeds_many(:authorization, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:location, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:networkReference, Fhir.Reference)
    embeds_many(:role, Fhir.CodeableConcept)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:who, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          networkString: String.t(),
          networkUri: String.t(),
          policy: String.t(),
          requestor: boolean(),
          _networkString: Fhir.Element.t(),
          _networkUri: Fhir.Element.t(),
          _policy: [Fhir.Element.t()],
          _requestor: Fhir.Element.t(),
          authorization: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          location: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()],
          networkReference: Fhir.Reference.t(),
          role: [Fhir.CodeableConcept.t()],
          type: Fhir.CodeableConcept.t(),
          who: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :networkString, :networkUri, :policy, :requestor])
    |> cast_embed(:_networkString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_networkUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_policy, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_requestor, with: &Fhir.Element.changeset/2)
    |> cast_embed(:authorization, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:networkReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:role, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:who, with: &Fhir.Reference.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:requestor, [true, false])
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
