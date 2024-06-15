defmodule Fhir.PaymentNotice do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_created, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_paymentDate, Fhir.Element
        field :_status, Fhir.Element
        field :amount, Fhir.Money
        field :contained, [Fhir.ResourceList], default: []
        field :created, :datetime
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :payee, Fhir.Reference
        field :payment, Fhir.Reference
        field :paymentDate, :date
        field :paymentStatus, Fhir.CodeableConcept
        field :recipient, Fhir.Reference
        field :reporter, Fhir.Reference
        field :request, Fhir.Reference
        field :resourceType, :string, default: "PaymentNotice"
        field :response, Fhir.Reference
        field :status, :string
        field :text, Fhir.Narrative
  end
end
