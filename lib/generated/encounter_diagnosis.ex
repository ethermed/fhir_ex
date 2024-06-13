defmodule Fhir.Generated.EncounterDiagnosis do
  use TypedStruct

  typedstruct do
    field :condition, [Fhir.Generated.CodeableReference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :use, [Fhir.Generated.CodeableConcept], default: []
  end
end
