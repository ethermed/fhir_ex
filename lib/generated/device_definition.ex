defmodule Fhir.DeviceDefinition do
  @moduledoc """
  The characteristics, operational status and capabilities of a medical-related component of a medical device.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:productionIdentifierInUDI, :string)
    field(:language, :string)
    field(:modelNumber, :string)
    field(:resourceType, :string, default: "DeviceDefinition")
    field(:partNumber, :string)
    field(:implicitRules, :string)
    field(:id, :string)
    embeds_many(:shelfLifeStorage, Fhir.ProductShelfLife)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:udiDeviceIdentifier, Fhir.DeviceDefinitionUdiDeviceIdentifier)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_modelNumber, Fhir.Element)
    embeds_many(:_productionIdentifierInUDI, Fhir.Element)
    embeds_many(:hasPart, Fhir.DeviceDefinitionHasPart)
    embeds_many(:link, Fhir.DeviceDefinitionLink)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:conformsTo, Fhir.DeviceDefinitionConformsTo)
    embeds_one(:manufacturer, Fhir.Reference)
    embeds_many(:languageCode, Fhir.CodeableConcept)
    embeds_one(:_partNumber, Fhir.Element)
    embeds_many(:regulatoryIdentifier, Fhir.DeviceDefinitionRegulatoryIdentifier)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:chargeItem, Fhir.DeviceDefinitionChargeItem)
    embeds_many(:packaging, Fhir.DeviceDefinitionPackaging)
    embeds_one(:correctiveAction, Fhir.DeviceDefinitionCorrectiveAction)
    embeds_many(:version, Fhir.DeviceDefinitionVersion)
    embeds_many(:contact, Fhir.ContactPoint)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:deviceName, Fhir.DeviceDefinitionDeviceName)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:property, Fhir.DeviceDefinitionProperty)
    embeds_many(:classification, Fhir.DeviceDefinitionClassification)
    embeds_many(:safety, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:material, Fhir.DeviceDefinitionMaterial)
    embeds_one(:guideline, Fhir.DeviceDefinitionGuideline)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:owner, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          productionIdentifierInUDI: String.t(),
          language: String.t(),
          modelNumber: String.t(),
          resourceType: String.t(),
          partNumber: String.t(),
          implicitRules: String.t(),
          id: String.t(),
          shelfLifeStorage: [Fhir.ProductShelfLife.t()],
          extension: [Fhir.Extension.t()],
          udiDeviceIdentifier: [Fhir.DeviceDefinitionUdiDeviceIdentifier.t()],
          contained: [Fhir.ResourceList.t()],
          _modelNumber: Fhir.Element.t(),
          _productionIdentifierInUDI: [Fhir.Element.t()],
          hasPart: [Fhir.DeviceDefinitionHasPart.t()],
          link: [Fhir.DeviceDefinitionLink.t()],
          _implicitRules: Fhir.Element.t(),
          conformsTo: [Fhir.DeviceDefinitionConformsTo.t()],
          manufacturer: Fhir.Reference.t(),
          languageCode: [Fhir.CodeableConcept.t()],
          _partNumber: Fhir.Element.t(),
          regulatoryIdentifier: [Fhir.DeviceDefinitionRegulatoryIdentifier.t()],
          _description: Fhir.Element.t(),
          chargeItem: [Fhir.DeviceDefinitionChargeItem.t()],
          packaging: [Fhir.DeviceDefinitionPackaging.t()],
          correctiveAction: Fhir.DeviceDefinitionCorrectiveAction.t(),
          version: [Fhir.DeviceDefinitionVersion.t()],
          contact: [Fhir.ContactPoint.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          deviceName: [Fhir.DeviceDefinitionDeviceName.t()],
          identifier: [Fhir.Identifier.t()],
          property: [Fhir.DeviceDefinitionProperty.t()],
          classification: [Fhir.DeviceDefinitionClassification.t()],
          safety: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          material: [Fhir.DeviceDefinitionMaterial.t()],
          guideline: Fhir.DeviceDefinitionGuideline.t(),
          note: [Fhir.Annotation.t()],
          owner: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :description,
      :productionIdentifierInUDI,
      :language,
      :modelNumber,
      :resourceType,
      :partNumber,
      :implicitRules,
      :id
    ])
    |> cast_embed(:shelfLifeStorage, with: &Fhir.ProductShelfLife.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:udiDeviceIdentifier,
      with: &Fhir.DeviceDefinitionUdiDeviceIdentifier.changeset/2
    )
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_modelNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_productionIdentifierInUDI, with: &Fhir.Element.changeset/2)
    |> cast_embed(:hasPart, with: &Fhir.DeviceDefinitionHasPart.changeset/2)
    |> cast_embed(:link, with: &Fhir.DeviceDefinitionLink.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:conformsTo, with: &Fhir.DeviceDefinitionConformsTo.changeset/2)
    |> cast_embed(:manufacturer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:languageCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_partNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:regulatoryIdentifier,
      with: &Fhir.DeviceDefinitionRegulatoryIdentifier.changeset/2
    )
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:chargeItem, with: &Fhir.DeviceDefinitionChargeItem.changeset/2)
    |> cast_embed(:packaging, with: &Fhir.DeviceDefinitionPackaging.changeset/2)
    |> cast_embed(:correctiveAction, with: &Fhir.DeviceDefinitionCorrectiveAction.changeset/2)
    |> cast_embed(:version, with: &Fhir.DeviceDefinitionVersion.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactPoint.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:deviceName, with: &Fhir.DeviceDefinitionDeviceName.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:property, with: &Fhir.DeviceDefinitionProperty.changeset/2)
    |> cast_embed(:classification, with: &Fhir.DeviceDefinitionClassification.changeset/2)
    |> cast_embed(:safety, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:material, with: &Fhir.DeviceDefinitionMaterial.changeset/2)
    |> cast_embed(:guideline, with: &Fhir.DeviceDefinitionGuideline.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:owner, with: &Fhir.Reference.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:modelNumber, ~r/^^[\s\S]+$$/)
    |> validate_format(:partNumber, ~r/^^[\s\S]+$$/)
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
