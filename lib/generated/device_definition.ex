defmodule Fhir.DeviceDefinition do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_modelNumber, Fhir.Element)
    field(:_partNumber, Fhir.Element)
    field(:_productionIdentifierInUDI, [Fhir.Element], default: [])
    field(:chargeItem, [Fhir.DeviceDefinitionChargeItem], default: [])
    field(:classification, [Fhir.DeviceDefinitionClassification], default: [])
    field(:conformsTo, [Fhir.DeviceDefinitionConformsTo], default: [])
    field(:contact, [Fhir.ContactPoint], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:correctiveAction, Fhir.DeviceDefinitionCorrectiveAction)
    field(:description, :string)
    field(:deviceName, [Fhir.DeviceDefinitionDeviceName], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:guideline, Fhir.DeviceDefinitionGuideline)
    field(:hasPart, [Fhir.DeviceDefinitionHasPart], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:languageCode, [Fhir.CodeableConcept], default: [])
    field(:link, [Fhir.DeviceDefinitionLink], default: [])
    field(:manufacturer, Fhir.Reference)
    field(:material, [Fhir.DeviceDefinitionMaterial], default: [])
    field(:meta, Fhir.Meta)
    field(:modelNumber, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:owner, Fhir.Reference)
    field(:packaging, [Fhir.DeviceDefinitionPackaging], default: [])
    field(:partNumber, :string)
    field(:productionIdentifierInUDI, [:string], default: [])
    field(:property, [Fhir.DeviceDefinitionProperty], default: [])
    field(:regulatoryIdentifier, [Fhir.DeviceDefinitionRegulatoryIdentifier], default: [])
    field(:resourceType, :string, default: "DeviceDefinition")
    field(:safety, [Fhir.CodeableConcept], default: [])
    field(:shelfLifeStorage, [Fhir.ProductShelfLife], default: [])
    field(:text, Fhir.Narrative)
    field(:udiDeviceIdentifier, [Fhir.DeviceDefinitionUdiDeviceIdentifier], default: [])
    field(:version, [Fhir.DeviceDefinitionVersion], default: [])
  end
end
