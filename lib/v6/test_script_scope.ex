defmodule Fhir.v6().TestScriptScope do
  use TypedStruct

  typedstruct do
    field(:artifact, :string)
    field(:conformance, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:phase, Fhir.v6().CodeableConcept)
  end
end
