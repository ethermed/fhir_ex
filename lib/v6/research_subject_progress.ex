defmodule Fhir.v6().ResearchSubjectProgress do
  use TypedStruct

  typedstruct do
    field(:_endDate, Fhir.v6().Element)
    field(:_startDate, Fhir.v6().Element)
    field(:endDate, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:milestone, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reason, Fhir.v6().CodeableConcept)
    field(:startDate, :datetime)
    field(:subjectState, Fhir.v6().CodeableConcept)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
