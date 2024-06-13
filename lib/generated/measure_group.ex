defmodule Fhir.Generated.MeasureGroup do
  use TypedStruct

  typedstruct do
    field :_basis, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_linkId, Fhir.Generated.Element
        field :_rateAggregation, Fhir.Generated.Element
        field :basis, :string
        field :code, Fhir.Generated.CodeableConcept
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :improvementNotation, Fhir.Generated.CodeableConcept
        field :library, [:string], default: []
        field :linkId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :population, [Fhir.Generated.MeasurePopulation], default: []
        field :rateAggregation, :string
        field :scoring, Fhir.Generated.CodeableConcept
        field :scoringUnit, Fhir.Generated.CodeableConcept
        field :stratifier, [Fhir.Generated.MeasureStratifier], default: []
        field :subjectCodeableConcept, Fhir.Generated.CodeableConcept
        field :subjectReference, Fhir.Generated.Reference
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
