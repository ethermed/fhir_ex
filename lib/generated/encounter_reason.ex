defmodule Fhir.Generated.EncounterReason do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :use, [Fhir.Generated.CodeableConcept], default: []
        field :value, [Fhir.Generated.CodeableReference], default: []
  end
end
