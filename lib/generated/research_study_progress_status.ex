defmodule Fhir.ResearchStudyProgressStatus do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_actual, Fhir.Element)
    field(:actual, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
    field(:state, Fhir.CodeableConcept)
  end
end
