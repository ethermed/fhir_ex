defmodule Fhir.Generated.CoverageEligibilityResponse do
  use TypedStruct

  typedstruct do
    field :_created, Fhir.Generated.Element
        field :_disposition, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_outcome, Fhir.Generated.Element
        field :_preAuthRef, Fhir.Generated.Element
        field :_purpose, [Fhir.Generated.Element], default: []
        field :_servicedDate, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :created, :datetime
        field :disposition, :string
        field :error, [Fhir.Generated.CoverageEligibilityResponseError], default: []
        field :event, [Fhir.Generated.CoverageEligibilityResponseEvent], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :form, Fhir.Generated.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :insurance, [Fhir.Generated.CoverageEligibilityResponseInsurance], default: []
        field :insurer, Fhir.Generated.Reference
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :outcome, :string
        field :patient, Fhir.Generated.Reference
        field :preAuthRef, :string
        field :purpose, [:string], default: []
        field :request, Fhir.Generated.Reference
        field :requestor, Fhir.Generated.Reference
        field :resourceType, :string, default: "CoverageEligibilityResponse"
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Generated.Period
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
