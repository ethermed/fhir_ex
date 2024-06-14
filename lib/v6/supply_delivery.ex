defmodule Fhir.v6().SupplyDelivery do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_occurrenceDateTime, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:basedOn, [Fhir.v6().Reference], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:destination, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:occurrenceDateTime, :string)
    field(:occurrencePeriod, Fhir.v6().Period)
    field(:occurrenceTiming, Fhir.v6().Timing)
    field(:partOf, [Fhir.v6().Reference], default: [])
    field(:patient, Fhir.v6().Reference)
    field(:receiver, [Fhir.v6().Reference], default: [])
    field(:resourceType, :string, default: "SupplyDelivery")
    field(:status, :string)
    field(:suppliedItem, [Fhir.v6().SupplyDeliverySuppliedItem], default: [])
    field(:supplier, Fhir.v6().Reference)
    field(:text, Fhir.v6().Narrative)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
