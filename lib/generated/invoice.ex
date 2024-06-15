defmodule Fhir.Invoice do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_cancelledReason, Fhir.Element
        field :_creation, Fhir.Element
        field :_date, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_paymentTerms, Fhir.Element
        field :_periodDate, Fhir.Element
        field :_status, Fhir.Element
        field :account, Fhir.Reference
        field :cancelledReason, :string
        field :contained, [Fhir.ResourceList], default: []
        field :creation, :datetime
        field :date, :datetime
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :issuer, Fhir.Reference
        field :language, :string
        field :lineItem, [Fhir.InvoiceLineItem], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :participant, [Fhir.InvoiceParticipant], default: []
        field :paymentTerms, :string
        field :periodDate, :string
        field :periodPeriod, Fhir.Period
        field :recipient, Fhir.Reference
        field :resourceType, :string, default: "Invoice"
        field :status, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
        field :totalGross, Fhir.Money
        field :totalNet, Fhir.Money
        field :totalPriceComponent, [Fhir.MonetaryComponent], default: []
        field :type, Fhir.CodeableConcept
  end
end
