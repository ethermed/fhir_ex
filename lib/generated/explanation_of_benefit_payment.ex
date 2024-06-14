defmodule Fhir.ExplanationOfBenefitPayment do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.Element)
    field(:adjustment, Fhir.Money)
    field(:adjustmentReason, Fhir.CodeableConcept)
    field(:amount, Fhir.Money)
    field(:date, :date)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.Identifier)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
