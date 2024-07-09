defmodule Fhir.SubstanceDefinition do
  @moduledoc """
  The detailed description of a substance, typically at a level beyond what is used for prescribing.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:version, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "SubstanceDefinition")
    field(:implicitRules, :string)
    field(:id, :string)
    embeds_many(:name, Fhir.SubstanceDefinitionName)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:informationSource, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:polymer, Fhir.Reference)
    embeds_many(:moiety, Fhir.SubstanceDefinitionMoiety)
    embeds_one(:protein, Fhir.Reference)
    embeds_many(:relationship, Fhir.SubstanceDefinitionRelationship)
    embeds_many(:molecularWeight, Fhir.SubstanceDefinitionMolecularWeight)
    embeds_one(:domain, Fhir.CodeableConcept)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:manufacturer, Fhir.Reference)
    embeds_many(:characterization, Fhir.SubstanceDefinitionCharacterization)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:supplier, Fhir.Reference)
    embeds_many(:code, Fhir.SubstanceDefinitionCode)
    embeds_one(:sourceMaterial, Fhir.SubstanceDefinitionSourceMaterial)
    embeds_one(:structure, Fhir.SubstanceDefinitionStructure)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:nucleicAcid, Fhir.Reference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:property, Fhir.SubstanceDefinitionProperty)
    embeds_many(:classification, Fhir.CodeableConcept)
    embeds_many(:grade, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:referenceInformation, Fhir.Reference)
    embeds_one(:status, Fhir.CodeableConcept)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          version: String.t(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          id: String.t(),
          name: [Fhir.SubstanceDefinitionName.t()],
          extension: [Fhir.Extension.t()],
          informationSource: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          polymer: Fhir.Reference.t(),
          moiety: [Fhir.SubstanceDefinitionMoiety.t()],
          protein: Fhir.Reference.t(),
          relationship: [Fhir.SubstanceDefinitionRelationship.t()],
          molecularWeight: [Fhir.SubstanceDefinitionMolecularWeight.t()],
          domain: Fhir.CodeableConcept.t(),
          _implicitRules: Fhir.Element.t(),
          manufacturer: [Fhir.Reference.t()],
          characterization: [Fhir.SubstanceDefinitionCharacterization.t()],
          _description: Fhir.Element.t(),
          supplier: [Fhir.Reference.t()],
          code: [Fhir.SubstanceDefinitionCode.t()],
          sourceMaterial: Fhir.SubstanceDefinitionSourceMaterial.t(),
          structure: Fhir.SubstanceDefinitionStructure.t(),
          text: Fhir.Narrative.t(),
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          nucleicAcid: Fhir.Reference.t(),
          identifier: [Fhir.Identifier.t()],
          property: [Fhir.SubstanceDefinitionProperty.t()],
          classification: [Fhir.CodeableConcept.t()],
          grade: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          referenceInformation: Fhir.Reference.t(),
          status: Fhir.CodeableConcept.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :version, :language, :resourceType, :implicitRules, :id])
    |> cast_embed(:name, with: &Fhir.SubstanceDefinitionName.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:informationSource, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:polymer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:moiety, with: &Fhir.SubstanceDefinitionMoiety.changeset/2)
    |> cast_embed(:protein, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:relationship, with: &Fhir.SubstanceDefinitionRelationship.changeset/2)
    |> cast_embed(:molecularWeight, with: &Fhir.SubstanceDefinitionMolecularWeight.changeset/2)
    |> cast_embed(:domain, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:manufacturer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:characterization, with: &Fhir.SubstanceDefinitionCharacterization.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:supplier, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:code, with: &Fhir.SubstanceDefinitionCode.changeset/2)
    |> cast_embed(:sourceMaterial, with: &Fhir.SubstanceDefinitionSourceMaterial.changeset/2)
    |> cast_embed(:structure, with: &Fhir.SubstanceDefinitionStructure.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:nucleicAcid, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:property, with: &Fhir.SubstanceDefinitionProperty.changeset/2)
    |> cast_embed(:classification, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:grade, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:referenceInformation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:status, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
