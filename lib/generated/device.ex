defmodule Fhir.Device do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_displayName, Fhir.Element
        field :_expirationDate, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_lotNumber, Fhir.Element
        field :_manufactureDate, Fhir.Element
        field :_manufacturer, Fhir.Element
        field :_modelNumber, Fhir.Element
        field :_partNumber, Fhir.Element
        field :_serialNumber, Fhir.Element
        field :_status, Fhir.Element
        field :_url, Fhir.Element
        field :availabilityStatus, Fhir.CodeableConcept
        field :biologicalSourceEvent, Fhir.Identifier
        field :category, [Fhir.CodeableConcept], default: []
        field :conformsTo, [Fhir.DeviceConformsTo], default: []
        field :contact, [Fhir.ContactPoint], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :cycle, Fhir.Count
        field :definition, Fhir.CodeableReference
        field :displayName, :string
        field :duration, Fhir.Duration
        field :endpoint, [Fhir.Reference], default: []
        field :expirationDate, :datetime
        field :extension, [Fhir.Extension], default: []
        field :gateway, [Fhir.CodeableReference], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Reference
        field :lotNumber, :string
        field :manufactureDate, :datetime
        field :manufacturer, :string
        field :meta, Fhir.Meta
        field :mode, Fhir.CodeableConcept
        field :modelNumber, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, [Fhir.DeviceName], default: []
        field :note, [Fhir.Annotation], default: []
        field :owner, Fhir.Reference
        field :parent, Fhir.Reference
        field :partNumber, :string
        field :property, [Fhir.DeviceProperty], default: []
        field :resourceType, :string, default: "Device"
        field :safety, [Fhir.CodeableConcept], default: []
        field :serialNumber, :string
        field :status, :string
        field :text, Fhir.Narrative
        field :type, [Fhir.CodeableConcept], default: []
        field :udiCarrier, [Fhir.DeviceUdiCarrier], default: []
        field :url, :string
        field :version, [Fhir.DeviceVersion], default: []
  end
end
