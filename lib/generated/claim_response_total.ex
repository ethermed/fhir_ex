defmodule Fhir.ClaimResponseTotal do
  use TypedStruct

  typedstruct do
    field(:amount, Fhir.Money)
    field(:category, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
