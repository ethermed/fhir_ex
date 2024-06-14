defmodule Fhir.EncounterReason do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:use, [Fhir.CodeableConcept], default: [])
    field(:value, [Fhir.CodeableReference], default: [])
  end
end
