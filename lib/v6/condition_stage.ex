defmodule Fhir.v6().ConditionStage do
  use TypedStruct

  typedstruct do
    field(:assessment, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:summary, Fhir.v6().CodeableConcept)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
