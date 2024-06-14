defmodule Fhir.ConditionStage do
  use TypedStruct

  typedstruct do
    field(:assessment, [Fhir.Reference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:summary, Fhir.CodeableConcept)
    field(:type, Fhir.CodeableConcept)
  end
end
