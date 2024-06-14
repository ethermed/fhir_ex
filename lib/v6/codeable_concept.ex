defmodule Fhir.v6().CodeableConcept do
  use TypedStruct

  typedstruct do
    field(:_text, Fhir.v6().Element)
    field(:coding, [Fhir.v6().Coding], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:text, :string)
  end
end
