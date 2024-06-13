defmodule Fhir.Generated.HealthcareService do
  use TypedStruct

  typedstruct do
    field :_active, Fhir.Generated.Element
        field :_appointmentRequired, Fhir.Generated.Element
        field :_comment, Fhir.Generated.Element
        field :_extraDetails, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :active, :boolean
        field :appointmentRequired, :boolean
        field :availability, [Fhir.Generated.Availability], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :characteristic, [Fhir.Generated.CodeableConcept], default: []
        field :comment, :string
        field :communication, [Fhir.Generated.CodeableConcept], default: []
        field :contact, [Fhir.Generated.ExtendedContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :coverageArea, [Fhir.Generated.Reference], default: []
        field :eligibility, [Fhir.Generated.HealthcareServiceEligibility], default: []
        field :endpoint, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :extraDetails, :string
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, [Fhir.Generated.Reference], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :offeredIn, [Fhir.Generated.Reference], default: []
        field :photo, Fhir.Generated.Attachment
        field :program, [Fhir.Generated.CodeableConcept], default: []
        field :providedBy, Fhir.Generated.Reference
        field :referralMethod, [Fhir.Generated.CodeableConcept], default: []
        field :resourceType, :string, default: "HealthcareService"
        field :serviceProvisionCode, [Fhir.Generated.CodeableConcept], default: []
        field :specialty, [Fhir.Generated.CodeableConcept], default: []
        field :text, Fhir.Generated.Narrative
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
