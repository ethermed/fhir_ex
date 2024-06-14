defmodule Fhir.v6().ResearchSubject do
  use TypedStruct

  typedstruct do
    field(:_actualComparisonGroup, Fhir.v6().Element)
    field(:_assignedComparisonGroup, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:actualComparisonGroup, :string)
    field(:assignedComparisonGroup, :string)
    field(:consent, [Fhir.v6().Reference], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:progress, [Fhir.v6().ResearchSubjectProgress], default: [])
    field(:resourceType, :string, default: "ResearchSubject")
    field(:status, :string)
    field(:study, Fhir.v6().Reference)
    field(:subject, Fhir.v6().Reference)
    field(:text, Fhir.v6().Narrative)
  end
end
