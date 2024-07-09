defmodule Fhir.MedicationKnowledgeMedicineClassification do
  @moduledoc """
  Information about a medication that is used to support knowledge.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:sourceString, :string)
    field(:sourceUri, :string)
    embeds_one(:_sourceString, Fhir.Element)
    embeds_one(:_sourceUri, Fhir.Element)
    embeds_many(:classification, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          sourceString: String.t(),
          sourceUri: String.t(),
          _sourceString: Fhir.Element.t(),
          _sourceUri: Fhir.Element.t(),
          classification: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :sourceString, :sourceUri])
    |> cast_embed(:_sourceString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sourceUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:classification, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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
