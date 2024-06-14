defmodule Fhir.v6().DetectedIssueEvidence do
  use TypedStruct

  typedstruct do
    field(:code, [Fhir.v6().CodeableConcept], default: [])
    field(:detail, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
