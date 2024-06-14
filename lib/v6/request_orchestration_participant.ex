defmodule Fhir.v6().RequestOrchestrationParticipant do
  use TypedStruct

  typedstruct do
    field(:_actorCanonical, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:actorCanonical, :string)
    field(:actorReference, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:function, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:role, Fhir.v6().CodeableConcept)
    field(:type, :string)
    field(:typeCanonical, :string)
    field(:typeReference, Fhir.v6().Reference)
  end
end
