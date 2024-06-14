defmodule Fhir.v6().ClaimEvent do
  use TypedStruct

  typedstruct do
    field(:_whenDateTime, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:whenDateTime, :string)
    field(:whenPeriod, Fhir.v6().Period)
  end
end
