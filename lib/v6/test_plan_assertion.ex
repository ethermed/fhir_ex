defmodule Fhir.v6().TestPlanAssertion do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:object, [Fhir.v6().CodeableReference], default: [])
    field(:result, [Fhir.v6().CodeableReference], default: [])
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
