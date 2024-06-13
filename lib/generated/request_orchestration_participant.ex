defmodule Fhir.Generated.RequestOrchestrationParticipant do
  use TypedStruct

  typedstruct do
    field :_actorCanonical, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :actorCanonical, :string
        field :actorReference, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :function, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :role, Fhir.Generated.CodeableConcept
        field :type, :string
        field :typeCanonical, :string
        field :typeReference, Fhir.Generated.Reference
  end
end
