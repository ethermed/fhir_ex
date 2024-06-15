defmodule Fhir.CoverageEligibilityRequest do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_created, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_purpose, [Fhir.Element], default: []
        field :_servicedDate, Fhir.Element
        field :_status, Fhir.Element
        field :contained, [Fhir.ResourceList], default: []
        field :created, :datetime
        field :enterer, Fhir.Reference
        field :event, [Fhir.CoverageEligibilityRequestEvent], default: []
        field :extension, [Fhir.Extension], default: []
        field :facility, Fhir.Reference
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :insurance, [Fhir.CoverageEligibilityRequestInsurance], default: []
        field :insurer, Fhir.Reference
        field :item, [Fhir.CoverageEligibilityRequestItem], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :patient, Fhir.Reference
        field :priority, Fhir.CodeableConcept
        field :provider, Fhir.Reference
        field :purpose, [:string], default: []
        field :resourceType, :string, default: "CoverageEligibilityRequest"
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Period
        field :status, :string
        field :supportingInfo, [Fhir.CoverageEligibilityRequestSupportingInfo], default: []
        field :text, Fhir.Narrative
  end
end
