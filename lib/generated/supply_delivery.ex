defmodule Fhir.SupplyDelivery do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_occurrenceDateTime, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:basedOn, [Fhir.Reference], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:destination, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:occurrenceDateTime, :string)
    field(:occurrencePeriod, Fhir.Period)
    field(:occurrenceTiming, Fhir.Timing)
    field(:partOf, [Fhir.Reference], default: [])
    field(:patient, Fhir.Reference)
    field(:receiver, [Fhir.Reference], default: [])
    field(:resourceType, :string, default: "SupplyDelivery")
    field(:status, :string)
    field(:suppliedItem, [Fhir.SupplyDeliverySuppliedItem], default: [])
    field(:supplier, Fhir.Reference)
    field(:text, Fhir.Narrative)
    field(:type, Fhir.CodeableConcept)
  end
end
