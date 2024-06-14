defmodule Fhir.ClaimPayee do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:party, Fhir.Reference)
    field(:type, Fhir.CodeableConcept)
  end
end
