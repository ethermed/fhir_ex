defmodule Fhir.v6().PaymentNotice do
  use TypedStruct

  typedstruct do
    field(:_created, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_paymentDate, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:amount, Fhir.v6().Money)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:created, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:payee, Fhir.v6().Reference)
    field(:payment, Fhir.v6().Reference)
    field(:paymentDate, :date)
    field(:paymentStatus, Fhir.v6().CodeableConcept)
    field(:recipient, Fhir.v6().Reference)
    field(:reporter, Fhir.v6().Reference)
    field(:request, Fhir.v6().Reference)
    field(:resourceType, :string, default: "PaymentNotice")
    field(:response, Fhir.v6().Reference)
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
  end
end
