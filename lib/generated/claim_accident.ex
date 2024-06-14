defmodule Fhir.ClaimAccident do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.Element)
    field(:date, :date)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:locationAddress, Fhir.Address)
    field(:locationReference, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end