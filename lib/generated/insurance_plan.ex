defmodule Fhir.InsurancePlan do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_alias, [Fhir.Element], default: []
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :_status, Fhir.Element
        field :administeredBy, Fhir.Reference
        field :alias, [:string], default: []
        field :contact, [Fhir.ExtendedContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :coverage, [Fhir.InsurancePlanCoverage], default: []
        field :coverageArea, [Fhir.Reference], default: []
        field :endpoint, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :network, [Fhir.Reference], default: []
        field :ownedBy, Fhir.Reference
        field :period, Fhir.Period
        field :plan, [Fhir.InsurancePlanPlan], default: []
        field :resourceType, :string, default: "InsurancePlan"
        field :status, :string
        field :text, Fhir.Narrative
        field :type, [Fhir.CodeableConcept], default: []
  end
end
