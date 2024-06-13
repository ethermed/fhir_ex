defmodule Fhir.Generated.PaymentReconciliation do
  use TypedStruct

  typedstruct do
    field :_accountNumber, Fhir.Generated.Element
        field :_authorization, Fhir.Generated.Element
        field :_cardBrand, Fhir.Generated.Element
        field :_created, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_disposition, Fhir.Generated.Element
        field :_expirationDate, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_outcome, Fhir.Generated.Element
        field :_processor, Fhir.Generated.Element
        field :_referenceNumber, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :accountNumber, :string
        field :allocation, [Fhir.Generated.PaymentReconciliationAllocation], default: []
        field :amount, Fhir.Generated.Money
        field :authorization, :string
        field :cardBrand, :string
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :created, :datetime
        field :date, :date
        field :disposition, :string
        field :enterer, Fhir.Generated.Reference
        field :expirationDate, :date
        field :extension, [Fhir.Generated.Extension], default: []
        field :formCode, Fhir.Generated.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :issuerType, Fhir.Generated.CodeableConcept
        field :kind, Fhir.Generated.CodeableConcept
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :method, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :outcome, :string
        field :paymentIdentifier, Fhir.Generated.Identifier
        field :paymentIssuer, Fhir.Generated.Reference
        field :period, Fhir.Generated.Period
        field :processNote, [Fhir.Generated.PaymentReconciliationProcessNote], default: []
        field :processor, :string
        field :referenceNumber, :string
        field :request, Fhir.Generated.Reference
        field :requestor, Fhir.Generated.Reference
        field :resourceType, :string, default: "PaymentReconciliation"
        field :returnedAmount, Fhir.Generated.Money
        field :status, :string
        field :tenderedAmount, Fhir.Generated.Money
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
  end
end
