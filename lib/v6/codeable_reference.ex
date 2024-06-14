defmodule Fhir.v6().CodeableReference do
  use TypedStruct

  typedstruct do
    field(:concept, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:reference, Fhir.v6().Reference)
  end
end
