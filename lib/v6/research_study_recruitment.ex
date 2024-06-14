defmodule Fhir.v6().ResearchStudyRecruitment do
  use TypedStruct

  typedstruct do
    field(:_actualNumber, Fhir.v6().Element)
    field(:_targetNumber, Fhir.v6().Element)
    field(:actualGroup, Fhir.v6().Reference)
    field(:actualNumber, :float)
    field(:eligibility, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:targetNumber, :float)
  end
end
