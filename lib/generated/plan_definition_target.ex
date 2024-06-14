defmodule Fhir.PlanDefinitionTarget do
  use TypedStruct

  typedstruct do
    field(:_detailBoolean, Fhir.Element)
    field(:_detailInteger, Fhir.Element)
    field(:_detailString, Fhir.Element)
    field(:detailBoolean, :boolean)
    field(:detailCodeableConcept, Fhir.CodeableConcept)
    field(:detailInteger, :float)
    field(:detailQuantity, Fhir.Quantity)
    field(:detailRange, Fhir.Range)
    field(:detailRatio, Fhir.Ratio)
    field(:detailString, :string)
    field(:due, Fhir.Duration)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:measure, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end