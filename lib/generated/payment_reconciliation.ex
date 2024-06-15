defmodule Fhir.PaymentReconciliation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_accountNumber, Fhir.Element
        field :_authorization, Fhir.Element
        field :_cardBrand, Fhir.Element
        field :_created, Fhir.Element
        field :_date, Fhir.Element
        field :_disposition, Fhir.Element
        field :_expirationDate, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_outcome, Fhir.Element
        field :_processor, Fhir.Element
        field :_referenceNumber, Fhir.Element
        field :_status, Fhir.Element
        field :accountNumber, :string
        field :allocation, [Fhir.PaymentReconciliationAllocation], default: []
        field :amount, Fhir.Money
        field :authorization, :string
        field :cardBrand, :string
        field :contained, [Fhir.ResourceList], default: []
        field :created, :datetime
        field :date, :date
        field :disposition, :string
        field :enterer, Fhir.Reference
        field :expirationDate, :date
        field :extension, [Fhir.Extension], default: []
        field :formCode, Fhir.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :issuerType, Fhir.CodeableConcept
        field :kind, Fhir.CodeableConcept
        field :language, :string
        field :location, Fhir.Reference
        field :meta, Fhir.Meta
        field :method, Fhir.CodeableConcept
        field :modifierExtension, [Fhir.Extension], default: []
        field :outcome, :string
        field :paymentIdentifier, Fhir.Identifier
        field :paymentIssuer, Fhir.Reference
        field :period, Fhir.Period
        field :processNote, [Fhir.PaymentReconciliationProcessNote], default: []
        field :processor, :string
        field :referenceNumber, :string
        field :request, Fhir.Reference
        field :requestor, Fhir.Reference
        field :resourceType, :string, default: "PaymentReconciliation"
        field :returnedAmount, Fhir.Money
        field :status, :string
        field :tenderedAmount, Fhir.Money
        field :text, Fhir.Narrative
        field :type, Fhir.CodeableConcept
  end
end
