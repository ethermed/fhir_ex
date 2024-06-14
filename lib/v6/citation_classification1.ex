defmodule Fhir.v6().CitationClassification1 do
  use TypedStruct

  typedstruct do
    field(:artifactAssessment, [Fhir.v6().Reference], default: [])
    field(:classifier, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
