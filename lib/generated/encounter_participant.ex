defmodule Fhir.EncounterParticipant do
  use TypedStruct

  typedstruct do
    field(:actor, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
    field(:type, [Fhir.CodeableConcept], default: [])
  end
end
