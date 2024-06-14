defmodule Fhir.v6().RelatedArtifact do
  use TypedStruct

  typedstruct do
    field(:_citation, Fhir.v6().Element)
    field(:_display, Fhir.v6().Element)
    field(:_label, Fhir.v6().Element)
    field(:_publicationDate, Fhir.v6().Element)
    field(:_publicationStatus, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:citation, :string)
    field(:classifier, [Fhir.v6().CodeableConcept], default: [])
    field(:display, :string)
    field(:document, Fhir.v6().Attachment)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:label, :string)
    field(:publicationDate, :date)
    field(:publicationStatus, :string)
    field(:resource, :string)
    field(:resourceReference, Fhir.v6().Reference)
    field(:type, any())
  end
end
