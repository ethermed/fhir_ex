defmodule Fhir.v6().GoalTarget do
  use TypedStruct

  typedstruct do
    field(:_detailBoolean, Fhir.v6().Element)
    field(:_detailInteger, Fhir.v6().Element)
    field(:_detailString, Fhir.v6().Element)
    field(:_dueDate, Fhir.v6().Element)
    field(:detailBoolean, :boolean)
    field(:detailCodeableConcept, Fhir.v6().CodeableConcept)
    field(:detailInteger, :float)
    field(:detailQuantity, Fhir.v6().Quantity)
    field(:detailRange, Fhir.v6().Range)
    field(:detailRatio, Fhir.v6().Ratio)
    field(:detailString, :string)
    field(:dueDate, :string)
    field(:dueDuration, Fhir.v6().Duration)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:measure, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
