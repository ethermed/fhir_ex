defmodule Fhir.v6().CitationAbstract do
  use TypedStruct

  typedstruct do
    field(:_copyright, Fhir.v6().Element)
    field(:_text, Fhir.v6().Element)
    field(:copyright, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:language, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:text, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
