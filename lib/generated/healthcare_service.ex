defmodule Fhir.HealthcareService do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_active, Fhir.Element
        field :_appointmentRequired, Fhir.Element
        field :_comment, Fhir.Element
        field :_extraDetails, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :active, :boolean
        field :appointmentRequired, :boolean
        field :availability, [Fhir.Availability], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :characteristic, [Fhir.CodeableConcept], default: []
        field :comment, :string
        field :communication, [Fhir.CodeableConcept], default: []
        field :contact, [Fhir.ExtendedContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :coverageArea, [Fhir.Reference], default: []
        field :eligibility, [Fhir.HealthcareServiceEligibility], default: []
        field :endpoint, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :extraDetails, :string
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, [Fhir.Reference], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :offeredIn, [Fhir.Reference], default: []
        field :photo, Fhir.Attachment
        field :program, [Fhir.CodeableConcept], default: []
        field :providedBy, Fhir.Reference
        field :referralMethod, [Fhir.CodeableConcept], default: []
        field :resourceType, :string, default: "HealthcareService"
        field :serviceProvisionCode, [Fhir.CodeableConcept], default: []
        field :specialty, [Fhir.CodeableConcept], default: []
        field :text, Fhir.Narrative
        field :type, [Fhir.CodeableConcept], default: []
  end
end
