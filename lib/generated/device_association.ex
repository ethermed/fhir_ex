defmodule Fhir.Generated.DeviceAssociation do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :bodyStructure, Fhir.Generated.Reference
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :device, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :operation, [Fhir.Generated.DeviceAssociationOperation], default: []
        field :period, Fhir.Generated.Period
        field :resourceType, :string, default: "DeviceAssociation"
        field :status, Fhir.Generated.CodeableConcept
        field :statusReason, [Fhir.Generated.CodeableConcept], default: []
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
