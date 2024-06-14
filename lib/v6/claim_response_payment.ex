defmodule Fhir.v6().ClaimResponsePayment do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:adjustment, Fhir.v6().Money)
    field(:adjustmentReason, Fhir.v6().CodeableConcept)
    field(:amount, Fhir.v6().Money)
    field(:date, :date)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
