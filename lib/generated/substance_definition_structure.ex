defmodule Fhir.SubstanceDefinitionStructure do
  @moduledoc """
  The detailed description of a substance, typically at a level beyond what is used for prescribing.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:molecularFormula, :string)
    field(:molecularFormulaByMoiety, :string)
    embeds_one(:_molecularFormula, Fhir.Element)
    embeds_one(:_molecularFormulaByMoiety, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:molecularWeight, Fhir.SubstanceDefinitionMolecularWeight)
    embeds_one(:opticalActivity, Fhir.CodeableConcept)
    embeds_many(:representation, Fhir.SubstanceDefinitionRepresentation)
    embeds_many(:sourceDocument, Fhir.Reference)
    embeds_one(:stereochemistry, Fhir.CodeableConcept)
    embeds_many(:technique, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          molecularFormula: String.t(),
          molecularFormulaByMoiety: String.t(),
          _molecularFormula: Fhir.Element.t(),
          _molecularFormulaByMoiety: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          molecularWeight: Fhir.SubstanceDefinitionMolecularWeight.t(),
          opticalActivity: Fhir.CodeableConcept.t(),
          representation: [Fhir.SubstanceDefinitionRepresentation.t()],
          sourceDocument: [Fhir.Reference.t()],
          stereochemistry: Fhir.CodeableConcept.t(),
          technique: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :molecularFormula, :molecularFormulaByMoiety])
    |> cast_embed(:_molecularFormula, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_molecularFormulaByMoiety, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:molecularWeight, with: &Fhir.SubstanceDefinitionMolecularWeight.changeset/2)
    |> cast_embed(:opticalActivity, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:representation, with: &Fhir.SubstanceDefinitionRepresentation.changeset/2)
    |> cast_embed(:sourceDocument, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:stereochemistry, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:technique, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:molecularFormula, ~r/^^[\s\S]+$$/)
    |> validate_format(:molecularFormulaByMoiety, ~r/^^[\s\S]+$$/)
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
