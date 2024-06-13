defmodule Fhir.Generated.Coverage do
  use TypedStruct

  typedstruct do
    field :_dependent, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_kind, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_network, Fhir.Generated.Element
        field :_order, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_subrogation, Fhir.Generated.Element
        field :beneficiary, Fhir.Generated.Reference
        field :class, [Fhir.Generated.CoverageClass], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :contract, [Fhir.Generated.Reference], default: []
        field :costToBeneficiary, [Fhir.Generated.CoverageCostToBeneficiary], default: []
        field :dependent, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :insurancePlan, Fhir.Generated.Reference
        field :insurer, Fhir.Generated.Reference
        field :kind, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :network, :string
        field :order, :float
        field :paymentBy, [Fhir.Generated.CoveragePaymentBy], default: []
        field :period, Fhir.Generated.Period
        field :policyHolder, Fhir.Generated.Reference
        field :relationship, Fhir.Generated.CodeableConcept
        field :resourceType, :string, default: "Coverage"
        field :status, :string
        field :subrogation, :boolean
        field :subscriber, Fhir.Generated.Reference
        field :subscriberId, [Fhir.Generated.Identifier], default: []
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
  end
end
