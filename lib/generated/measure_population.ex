defmodule Fhir.Generated.MeasurePopulation do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_inputPopulationId, Fhir.Generated.Element
        field :_linkId, Fhir.Generated.Element
        field :aggregateMethod, Fhir.Generated.CodeableConcept
        field :code, Fhir.Generated.CodeableConcept
        field :criteria, Fhir.Generated.Expression
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :groupDefinition, Fhir.Generated.Reference
        field :id, :string
        field :inputPopulationId, :string
        field :linkId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
