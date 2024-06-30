defmodule Fhir.MeasureReportStratifier do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_linkId, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:stratum, [Fhir.MeasureReportStratum], default: [])
  end
end
