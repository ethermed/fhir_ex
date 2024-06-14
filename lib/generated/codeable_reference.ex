defmodule Fhir.CodeableReference do
  use TypedStruct

  typedstruct do
    field(:concept, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:reference, Fhir.Reference)
  end
end
