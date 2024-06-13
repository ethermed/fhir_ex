defmodule Fhir.Generated.ConditionParticipant do
  use TypedStruct

  typedstruct do
    field :actor, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :function, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
