defmodule Fhir.v6().ResearchStudyComparisonGroup do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_linkId, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:intendedExposure, [Fhir.v6().Reference], default: [])
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:observedGroup, Fhir.v6().Reference)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
