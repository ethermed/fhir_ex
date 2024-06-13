defmodule Fhir.Generated.InsurancePlan do
  use TypedStruct

  typedstruct do
    field :_alias, [Fhir.Generated.Element], default: []
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :administeredBy, Fhir.Generated.Reference
        field :alias, [:string], default: []
        field :contact, [Fhir.Generated.ExtendedContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :coverage, [Fhir.Generated.InsurancePlanCoverage], default: []
        field :coverageArea, [Fhir.Generated.Reference], default: []
        field :endpoint, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :network, [Fhir.Generated.Reference], default: []
        field :ownedBy, Fhir.Generated.Reference
        field :period, Fhir.Generated.Period
        field :plan, [Fhir.Generated.InsurancePlanPlan], default: []
        field :resourceType, :string, default: "InsurancePlan"
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
