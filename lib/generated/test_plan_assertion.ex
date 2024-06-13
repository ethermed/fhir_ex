defmodule Fhir.Generated.TestPlanAssertion do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :object, [Fhir.Generated.CodeableReference], default: []
        field :result, [Fhir.Generated.CodeableReference], default: []
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
