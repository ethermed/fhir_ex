defmodule Fhir.Generated.Device do
  use TypedStruct

  typedstruct do
    field :_displayName, Fhir.Generated.Element
        field :_expirationDate, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lotNumber, Fhir.Generated.Element
        field :_manufactureDate, Fhir.Generated.Element
        field :_manufacturer, Fhir.Generated.Element
        field :_modelNumber, Fhir.Generated.Element
        field :_partNumber, Fhir.Generated.Element
        field :_serialNumber, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :availabilityStatus, Fhir.Generated.CodeableConcept
        field :biologicalSourceEvent, Fhir.Generated.Identifier
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :conformsTo, [Fhir.Generated.DeviceConformsTo], default: []
        field :contact, [Fhir.Generated.ContactPoint], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :cycle, Fhir.Generated.Count
        field :definition, Fhir.Generated.CodeableReference
        field :displayName, :string
        field :duration, Fhir.Generated.Duration
        field :endpoint, [Fhir.Generated.Reference], default: []
        field :expirationDate, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :gateway, [Fhir.Generated.CodeableReference], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :lotNumber, :string
        field :manufactureDate, :datetime
        field :manufacturer, :string
        field :meta, Fhir.Generated.Meta
        field :mode, Fhir.Generated.CodeableConcept
        field :modelNumber, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, [Fhir.Generated.DeviceName], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :owner, Fhir.Generated.Reference
        field :parent, Fhir.Generated.Reference
        field :partNumber, :string
        field :property, [Fhir.Generated.DeviceProperty], default: []
        field :resourceType, :string, default: "Device"
        field :safety, [Fhir.Generated.CodeableConcept], default: []
        field :serialNumber, :string
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :type, [Fhir.Generated.CodeableConcept], default: []
        field :udiCarrier, [Fhir.Generated.DeviceUdiCarrier], default: []
        field :url, :string
        field :version, [Fhir.Generated.DeviceVersion], default: []
  end
end
