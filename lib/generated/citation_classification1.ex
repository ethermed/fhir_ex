defmodule Fhir.CitationClassification1 do
  use TypedStruct

  typedstruct do
    field(:artifactAssessment, [Fhir.Reference], default: [])
    field(:classifier, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
