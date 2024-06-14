defmodule Fhir.v6().AdverseEventSuspectEntity do
  use TypedStruct

  typedstruct do
    field(:causality, Fhir.v6().AdverseEventCausality)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:instanceCodeableConcept, Fhir.v6().CodeableConcept)
    field(:instanceReference, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
