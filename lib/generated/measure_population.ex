defmodule Fhir.MeasurePopulation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_description, Fhir.Element)
    field(:_inputPopulationId, Fhir.Element)
    field(:_linkId, Fhir.Element)
    field(:aggregateMethod, Fhir.CodeableConcept)
    field(:code, Fhir.CodeableConcept)
    field(:criteria, Fhir.Expression)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:groupDefinition, Fhir.Reference)
    field(:id, :string)
    field(:inputPopulationId, :string)
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
