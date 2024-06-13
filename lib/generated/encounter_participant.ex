defmodule Fhir.Generated.EncounterParticipant do
  use TypedStruct

  typedstruct do
    field :actor, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
