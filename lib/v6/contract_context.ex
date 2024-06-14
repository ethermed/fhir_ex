defmodule Fhir.v6().ContractContext do
  use TypedStruct

  typedstruct do
    field(:_text, Fhir.v6().Element)
    field(:code, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reference, Fhir.v6().Reference)
    field(:text, :string)
  end
end
