defmodule Fhir.v6().MeasureReportPopulation1 do
  use TypedStruct

  typedstruct do
    field(:_count, Fhir.v6().Element)
    field(:_linkId, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:count, :float)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:subjectReport, [Fhir.v6().Reference], default: [])
    field(:subjectResults, Fhir.v6().Reference)
    field(:subjects, Fhir.v6().Reference)
  end
end
