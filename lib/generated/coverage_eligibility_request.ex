defmodule Fhir.Generated.CoverageEligibilityRequest do
  use TypedStruct

  typedstruct do
    field :_created, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_purpose, [Fhir.Generated.Element], default: []
        field :_servicedDate, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :created, :datetime
        field :enterer, Fhir.Generated.Reference
        field :event, [Fhir.Generated.CoverageEligibilityRequestEvent], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :facility, Fhir.Generated.Reference
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :insurance, [Fhir.Generated.CoverageEligibilityRequestInsurance], default: []
        field :insurer, Fhir.Generated.Reference
        field :item, [Fhir.Generated.CoverageEligibilityRequestItem], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :patient, Fhir.Generated.Reference
        field :priority, Fhir.Generated.CodeableConcept
        field :provider, Fhir.Generated.Reference
        field :purpose, [:string], default: []
        field :resourceType, :string, default: "CoverageEligibilityRequest"
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Generated.Period
        field :status, :string
        field :supportingInfo, [Fhir.Generated.CoverageEligibilityRequestSupportingInfo], default: []
        field :text, Fhir.Generated.Narrative
  end
end
