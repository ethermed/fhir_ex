defmodule Fhir.ResearchStudyComparisonGroup do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_linkId, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:intendedExposure, [Fhir.Reference], default: [])
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:observedGroup, Fhir.Reference)
    field(:type, Fhir.CodeableConcept)
  end
end
