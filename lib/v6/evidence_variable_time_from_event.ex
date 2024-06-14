defmodule Fhir.v6().EvidenceVariableTimeFromEvent do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_eventDateTime, Fhir.v6().Element)
    field(:_eventId, Fhir.v6().Element)
    field(:description, :string)
    field(:eventCodeableConcept, Fhir.v6().CodeableConcept)
    field(:eventDateTime, :string)
    field(:eventId, :string)
    field(:eventReference, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:quantity, Fhir.v6().Quantity)
    field(:range, Fhir.v6().Range)
  end
end
