defmodule Fhir.v6().CitationTitle do
  use TypedStruct

  typedstruct do
    field(:_text, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:language, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:text, :string)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
