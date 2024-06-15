defmodule Fhir.CoverageEligibilityResponse do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_created, Fhir.Element
        field :_disposition, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_outcome, Fhir.Element
        field :_preAuthRef, Fhir.Element
        field :_purpose, [Fhir.Element], default: []
        field :_servicedDate, Fhir.Element
        field :_status, Fhir.Element
        field :contained, [Fhir.ResourceList], default: []
        field :created, :datetime
        field :disposition, :string
        field :error, [Fhir.CoverageEligibilityResponseError], default: []
        field :event, [Fhir.CoverageEligibilityResponseEvent], default: []
        field :extension, [Fhir.Extension], default: []
        field :form, Fhir.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :insurance, [Fhir.CoverageEligibilityResponseInsurance], default: []
        field :insurer, Fhir.Reference
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :outcome, :string
        field :patient, Fhir.Reference
        field :preAuthRef, :string
        field :purpose, [:string], default: []
        field :request, Fhir.Reference
        field :requestor, Fhir.Reference
        field :resourceType, :string, default: "CoverageEligibilityResponse"
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Period
        field :status, :string
        field :text, Fhir.Narrative
  end
end
