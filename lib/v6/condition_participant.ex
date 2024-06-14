defmodule Fhir.v6().ConditionParticipant do
  use TypedStruct

  typedstruct do
    field(:actor, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:function, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
