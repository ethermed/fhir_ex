defmodule Fhir.v6().ResearchStudyProgressStatus do
  use TypedStruct

  typedstruct do
    field(:_actual, Fhir.v6().Element)
    field(:actual, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:state, Fhir.v6().CodeableConcept)
  end
end
