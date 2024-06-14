defmodule Fhir.CitationAbstract do
  use TypedStruct

  typedstruct do
    field(:_copyright, Fhir.Element)
    field(:_text, Fhir.Element)
    field(:copyright, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:language, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:text, :string)
    field(:type, Fhir.CodeableConcept)
  end
end
