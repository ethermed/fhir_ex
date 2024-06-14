defmodule Fhir.v6().ClaimResponseProcessNote do
  use TypedStruct

  typedstruct do
    field(:_number, Fhir.v6().Element)
    field(:_text, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:language, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:number, :float)
    field(:text, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
