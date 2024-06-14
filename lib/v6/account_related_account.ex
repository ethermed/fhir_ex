defmodule Fhir.v6().AccountRelatedAccount do
  use TypedStruct

  typedstruct do
    field(:account, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:relationship, Fhir.v6().CodeableConcept)
  end
end
