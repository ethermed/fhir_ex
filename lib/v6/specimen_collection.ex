defmodule Fhir.v6().SpecimenCollection do
  use TypedStruct

  typedstruct do
    field(:_collectedDateTime, Fhir.v6().Element)
    field(:bodySite, Fhir.v6().CodeableReference)
    field(:collectedDateTime, :string)
    field(:collectedPeriod, Fhir.v6().Period)
    field(:collector, Fhir.v6().Reference)
    field(:device, Fhir.v6().CodeableReference)
    field(:duration, Fhir.v6().Duration)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:fastingStatusCodeableConcept, Fhir.v6().CodeableConcept)
    field(:fastingStatusDuration, Fhir.v6().Duration)
    field(:id, :string)
    field(:method, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:procedure, Fhir.v6().Reference)
    field(:quantity, Fhir.v6().Quantity)
  end
end
