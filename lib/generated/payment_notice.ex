defmodule Fhir.Generated.PaymentNotice do
  use TypedStruct

  typedstruct do
    field :_created, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_paymentDate, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :amount, Fhir.Generated.Money
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :created, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :payee, Fhir.Generated.Reference
        field :payment, Fhir.Generated.Reference
        field :paymentDate, :date
        field :paymentStatus, Fhir.Generated.CodeableConcept
        field :recipient, Fhir.Generated.Reference
        field :reporter, Fhir.Generated.Reference
        field :request, Fhir.Generated.Reference
        field :resourceType, :string, default: "PaymentNotice"
        field :response, Fhir.Generated.Reference
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
