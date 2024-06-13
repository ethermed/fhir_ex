defmodule Fhir.Generated.PlanDefinitionTarget do
  use TypedStruct

  typedstruct do
    field :_detailBoolean, Fhir.Generated.Element
        field :_detailInteger, Fhir.Generated.Element
        field :_detailString, Fhir.Generated.Element
        field :detailBoolean, :boolean
        field :detailCodeableConcept, Fhir.Generated.CodeableConcept
        field :detailInteger, :float
        field :detailQuantity, Fhir.Generated.Quantity
        field :detailRange, Fhir.Generated.Range
        field :detailRatio, Fhir.Generated.Ratio
        field :detailString, :string
        field :due, Fhir.Generated.Duration
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :measure, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
