defmodule Fhir.Coverage do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_dependent, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_kind, Fhir.Element
        field :_language, Fhir.Element
        field :_network, Fhir.Element
        field :_order, Fhir.Element
        field :_status, Fhir.Element
        field :_subrogation, Fhir.Element
        field :beneficiary, Fhir.Reference
        field :class, [Fhir.CoverageClass], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :contract, [Fhir.Reference], default: []
        field :costToBeneficiary, [Fhir.CoverageCostToBeneficiary], default: []
        field :dependent, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :insurancePlan, Fhir.Reference
        field :insurer, Fhir.Reference
        field :kind, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :network, :string
        field :order, :float
        field :paymentBy, [Fhir.CoveragePaymentBy], default: []
        field :period, Fhir.Period
        field :policyHolder, Fhir.Reference
        field :relationship, Fhir.CodeableConcept
        field :resourceType, :string, default: "Coverage"
        field :status, :string
        field :subrogation, :boolean
        field :subscriber, Fhir.Reference
        field :subscriberId, [Fhir.Identifier], default: []
        field :text, Fhir.Narrative
        field :type, Fhir.CodeableConcept
  end
end
