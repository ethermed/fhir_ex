defmodule Fhir.AccountRelatedAccount do
  use TypedStruct

  typedstruct do
    field(:account, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:relationship, Fhir.CodeableConcept)
  end
end
