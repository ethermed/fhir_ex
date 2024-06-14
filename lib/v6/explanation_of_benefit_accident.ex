defmodule Fhir.v6().ExplanationOfBenefitAccident do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:date, :date)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:locationAddress, Fhir.v6().Address)
    field(:locationReference, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
