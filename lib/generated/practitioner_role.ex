defmodule Fhir.Generated.PractitionerRole do
  use TypedStruct

  typedstruct do
    field :_active, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :active, :boolean
        field :availability, [Fhir.Generated.Availability], default: []
        field :characteristic, [Fhir.Generated.CodeableConcept], default: []
        field :code, [Fhir.Generated.CodeableConcept], default: []
        field :communication, [Fhir.Generated.CodeableConcept], default: []
        field :contact, [Fhir.Generated.ExtendedContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :endpoint, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :healthcareService, [Fhir.Generated.Reference], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, [Fhir.Generated.Reference], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :organization, Fhir.Generated.Reference
        field :period, Fhir.Generated.Period
        field :practitioner, Fhir.Generated.Reference
        field :resourceType, :string, default: "PractitionerRole"
        field :specialty, [Fhir.Generated.CodeableConcept], default: []
        field :text, Fhir.Generated.Narrative
  end
end
