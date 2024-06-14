defmodule Fhir.CitationWebLocation do
  use TypedStruct

  typedstruct do
    field(:_url, Fhir.Element)
    field(:classifier, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:url, :string)
  end
end