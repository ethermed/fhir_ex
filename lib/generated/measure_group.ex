defmodule Fhir.MeasureGroup do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_basis, Fhir.Element
        field :_description, Fhir.Element
        field :_linkId, Fhir.Element
        field :_rateAggregation, Fhir.Element
        field :basis, :string
        field :code, Fhir.CodeableConcept
        field :description, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :improvementNotation, Fhir.CodeableConcept
        field :library, [:string], default: []
        field :linkId, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :population, [Fhir.MeasurePopulation], default: []
        field :rateAggregation, :string
        field :scoring, Fhir.CodeableConcept
        field :scoringUnit, Fhir.CodeableConcept
        field :stratifier, [Fhir.MeasureStratifier], default: []
        field :subjectCodeableConcept, Fhir.CodeableConcept
        field :subjectReference, Fhir.Reference
        field :type, [Fhir.CodeableConcept], default: []
  end
end
