defmodule Fhir.v6().ResearchStudyOutcomeMeasure do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:reference, Fhir.v6().Reference)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
