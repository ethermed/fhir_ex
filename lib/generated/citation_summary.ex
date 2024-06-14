defmodule Fhir.CitationSummary do
  use TypedStruct

  typedstruct do
    field(:_text, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:style, Fhir.CodeableConcept)
    field(:text, :string)
  end
end
