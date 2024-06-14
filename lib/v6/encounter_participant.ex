defmodule Fhir.v6().EncounterParticipant do
  use TypedStruct

  typedstruct do
    field(:actor, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
