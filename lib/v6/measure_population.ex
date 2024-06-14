defmodule Fhir.v6().MeasurePopulation do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_inputPopulationId, Fhir.v6().Element)
    field(:_linkId, Fhir.v6().Element)
    field(:aggregateMethod, Fhir.v6().CodeableConcept)
    field(:code, Fhir.v6().CodeableConcept)
    field(:criteria, Fhir.v6().Expression)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:groupDefinition, Fhir.v6().Reference)
    field(:id, :string)
    field(:inputPopulationId, :string)
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
