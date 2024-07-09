defmodule Fhir.ClinicalUseDefinition do
  @moduledoc """
  A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:library, :string)
    field(:resourceType, :string, default: "ClinicalUseDefinition")
    field(:type, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:contraindication, Fhir.ClinicalUseDefinitionContraindication)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:indication, Fhir.ClinicalUseDefinitionIndication)
    embeds_one(:interaction, Fhir.ClinicalUseDefinitionInteraction)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:population, Fhir.Reference)
    embeds_one(:status, Fhir.CodeableConcept)
    embeds_many(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:undesirableEffect, Fhir.ClinicalUseDefinitionUndesirableEffect)
    embeds_one(:warning, Fhir.ClinicalUseDefinitionWarning)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          library: String.t(),
          resourceType: String.t(),
          type: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          category: [Fhir.CodeableConcept.t()],
          contained: [Fhir.ResourceList.t()],
          contraindication: Fhir.ClinicalUseDefinitionContraindication.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          indication: Fhir.ClinicalUseDefinitionIndication.t(),
          interaction: Fhir.ClinicalUseDefinitionInteraction.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          population: [Fhir.Reference.t()],
          status: Fhir.CodeableConcept.t(),
          subject: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          undesirableEffect: Fhir.ClinicalUseDefinitionUndesirableEffect.t(),
          warning: Fhir.ClinicalUseDefinitionWarning.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :implicitRules, :language, :library, :resourceType, :type])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:contraindication,
      with: &Fhir.ClinicalUseDefinitionContraindication.changeset/2
    )
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:indication, with: &Fhir.ClinicalUseDefinitionIndication.changeset/2)
    |> cast_embed(:interaction, with: &Fhir.ClinicalUseDefinitionInteraction.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:population, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:status, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:undesirableEffect,
      with: &Fhir.ClinicalUseDefinitionUndesirableEffect.changeset/2
    )
    |> cast_embed(:warning, with: &Fhir.ClinicalUseDefinitionWarning.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
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
