defmodule Fhir.TestScriptScope do
  use TypedStruct

  typedstruct do
    field(:artifact, :string)
    field(:conformance, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:phase, Fhir.CodeableConcept)
  end
end
