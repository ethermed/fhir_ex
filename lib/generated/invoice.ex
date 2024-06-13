defmodule Fhir.Generated.Invoice do
  use TypedStruct

  typedstruct do
    field :_cancelledReason, Fhir.Generated.Element
        field :_creation, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_paymentTerms, Fhir.Generated.Element
        field :_periodDate, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :account, Fhir.Generated.Reference
        field :cancelledReason, :string
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :creation, :datetime
        field :date, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :issuer, Fhir.Generated.Reference
        field :language, :string
        field :lineItem, [Fhir.Generated.InvoiceLineItem], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :participant, [Fhir.Generated.InvoiceParticipant], default: []
        field :paymentTerms, :string
        field :periodDate, :string
        field :periodPeriod, Fhir.Generated.Period
        field :recipient, Fhir.Generated.Reference
        field :resourceType, :string, default: "Invoice"
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :totalGross, Fhir.Generated.Money
        field :totalNet, Fhir.Generated.Money
        field :totalPriceComponent, [Fhir.Generated.MonetaryComponent], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
