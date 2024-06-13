defmodule Fhir.Generated.DeviceDefinition do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_modelNumber, Fhir.Generated.Element
        field :_partNumber, Fhir.Generated.Element
        field :_productionIdentifierInUDI, [Fhir.Generated.Element], default: []
        field :chargeItem, [Fhir.Generated.DeviceDefinitionChargeItem], default: []
        field :classification, [Fhir.Generated.DeviceDefinitionClassification], default: []
        field :conformsTo, [Fhir.Generated.DeviceDefinitionConformsTo], default: []
        field :contact, [Fhir.Generated.ContactPoint], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :correctiveAction, Fhir.Generated.DeviceDefinitionCorrectiveAction
        field :description, :string
        field :deviceName, [Fhir.Generated.DeviceDefinitionDeviceName], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :guideline, Fhir.Generated.DeviceDefinitionGuideline
        field :hasPart, [Fhir.Generated.DeviceDefinitionHasPart], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :languageCode, [Fhir.Generated.CodeableConcept], default: []
        field :link, [Fhir.Generated.DeviceDefinitionLink], default: []
        field :manufacturer, Fhir.Generated.Reference
        field :material, [Fhir.Generated.DeviceDefinitionMaterial], default: []
        field :meta, Fhir.Generated.Meta
        field :modelNumber, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :owner, Fhir.Generated.Reference
        field :packaging, [Fhir.Generated.DeviceDefinitionPackaging], default: []
        field :partNumber, :string
        field :productionIdentifierInUDI, [:string], default: []
        field :property, [Fhir.Generated.DeviceDefinitionProperty], default: []
        field :regulatoryIdentifier, [Fhir.Generated.DeviceDefinitionRegulatoryIdentifier], default: []
        field :resourceType, :string, default: "DeviceDefinition"
        field :safety, [Fhir.Generated.CodeableConcept], default: []
        field :shelfLifeStorage, [Fhir.Generated.ProductShelfLife], default: []
        field :text, Fhir.Generated.Narrative
        field :udiDeviceIdentifier, [Fhir.Generated.DeviceDefinitionUdiDeviceIdentifier], default: []
        field :version, [Fhir.Generated.DeviceDefinitionVersion], default: []
  end
end
