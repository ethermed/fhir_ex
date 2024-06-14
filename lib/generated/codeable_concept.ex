defmodule Fhir.CodeableConcept do
  use TypedStruct

  typedstruct do
    field(:_text, Fhir.Element)
    field(:coding, [Fhir.Coding], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:text, :string)
  end
end