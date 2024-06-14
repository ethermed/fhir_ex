defmodule Fhir.v6().MeasureReportStratifier do
  use TypedStruct

  typedstruct do
    field(:_linkId, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:stratum, [Fhir.v6().MeasureReportStratum], default: [])
  end
end
