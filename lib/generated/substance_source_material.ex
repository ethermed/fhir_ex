defmodule Fhir.SubstanceSourceMaterial do
  @moduledoc """
  Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material that can result in or can be modified to form a substance. This set of data elements shall be used to define polymer substances isolated from biological matrices. Taxonomic and anatomical origins shall be described using a controlled vocabulary as required. This information is captured for naturally derived polymers ( . starch) and structurally diverse substances. For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a single species or infraspecies, the Herbal Drug and the Herbal preparation. For Herbal preparations, the fraction information will be captured at the Substance information level and additional information for herbal extracts will be captured at the Specified Substance Group 1 information level. See for further explanation the Substance Class: Structurally Diverse and the herbal annex.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:geographicalLocation, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:organismName, :string)
    field(:parentSubstanceName, :string)
    field(:resourceType, :string, default: "SubstanceSourceMaterial")
    embeds_many(:_geographicalLocation, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_organismName, Fhir.Element)
    embeds_many(:_parentSubstanceName, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:countryOfOrigin, Fhir.CodeableConcept)
    embeds_one(:developmentStage, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:fractionDescription, Fhir.SubstanceSourceMaterialFractionDescription)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:organism, Fhir.SubstanceSourceMaterialOrganism)
    embeds_one(:organismId, Fhir.Identifier)
    embeds_many(:parentSubstanceId, Fhir.Identifier)
    embeds_many(:partDescription, Fhir.SubstanceSourceMaterialPartDescription)
    embeds_one(:sourceMaterialClass, Fhir.CodeableConcept)
    embeds_one(:sourceMaterialState, Fhir.CodeableConcept)
    embeds_one(:sourceMaterialType, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          geographicalLocation: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          organismName: String.t(),
          parentSubstanceName: String.t(),
          resourceType: String.t(),
          _geographicalLocation: [Fhir.Element.t()],
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _organismName: Fhir.Element.t(),
          _parentSubstanceName: [Fhir.Element.t()],
          contained: [Fhir.ResourceList.t()],
          countryOfOrigin: [Fhir.CodeableConcept.t()],
          developmentStage: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          fractionDescription: [Fhir.SubstanceSourceMaterialFractionDescription.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          organism: Fhir.SubstanceSourceMaterialOrganism.t(),
          organismId: Fhir.Identifier.t(),
          parentSubstanceId: [Fhir.Identifier.t()],
          partDescription: [Fhir.SubstanceSourceMaterialPartDescription.t()],
          sourceMaterialClass: Fhir.CodeableConcept.t(),
          sourceMaterialState: Fhir.CodeableConcept.t(),
          sourceMaterialType: Fhir.CodeableConcept.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :geographicalLocation,
      :id,
      :implicitRules,
      :language,
      :organismName,
      :parentSubstanceName,
      :resourceType
    ])
    |> cast_embed(:_geographicalLocation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_organismName, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_parentSubstanceName, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:countryOfOrigin, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:developmentStage, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:fractionDescription,
      with: &Fhir.SubstanceSourceMaterialFractionDescription.changeset/2
    )
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:organism, with: &Fhir.SubstanceSourceMaterialOrganism.changeset/2)
    |> cast_embed(:organismId, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:parentSubstanceId, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:partDescription,
      with: &Fhir.SubstanceSourceMaterialPartDescription.changeset/2
    )
    |> cast_embed(:sourceMaterialClass, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:sourceMaterialState, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:sourceMaterialType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:organismName, ~r/^^[\s\S]+$$/)
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
