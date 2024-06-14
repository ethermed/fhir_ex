defmodule Fhir.TestPlanAssertion do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:object, [Fhir.CodeableReference], default: [])
    field(:result, [Fhir.CodeableReference], default: [])
    field(:type, [Fhir.CodeableConcept], default: [])
  end
end
