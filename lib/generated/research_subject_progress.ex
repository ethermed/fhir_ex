defmodule Fhir.ResearchSubjectProgress do
  use TypedStruct

  typedstruct do
    field(:_endDate, Fhir.Element)
    field(:_startDate, Fhir.Element)
    field(:endDate, :datetime)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:milestone, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:reason, Fhir.CodeableConcept)
    field(:startDate, :datetime)
    field(:subjectState, Fhir.CodeableConcept)
    field(:type, Fhir.CodeableConcept)
  end
end
