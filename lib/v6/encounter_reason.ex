defmodule Fhir.v6().EncounterReason do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:use, [Fhir.v6().CodeableConcept], default: [])
    field(:value, [Fhir.v6().CodeableReference], default: [])
  end
end
