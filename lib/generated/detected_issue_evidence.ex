defmodule Fhir.DetectedIssueEvidence do
  use TypedStruct

  typedstruct do
    field(:code, [Fhir.CodeableConcept], default: [])
    field(:detail, [Fhir.Reference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end