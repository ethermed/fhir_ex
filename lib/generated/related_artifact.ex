defmodule Fhir.RelatedArtifact do
  use TypedStruct

  typedstruct do
    field(:_citation, Fhir.Element)
    field(:_display, Fhir.Element)
    field(:_label, Fhir.Element)
    field(:_publicationDate, Fhir.Element)
    field(:_publicationStatus, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:citation, :string)
    field(:classifier, [Fhir.CodeableConcept], default: [])
    field(:display, :string)
    field(:document, Fhir.Attachment)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:label, :string)
    field(:publicationDate, :date)
    field(:publicationStatus, :string)
    field(:resource, :string)
    field(:resourceReference, Fhir.Reference)
    field(:type, any())
  end
end
