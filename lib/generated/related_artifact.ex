defmodule Fhir.RelatedArtifact do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
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

    field(:type, Ecto.Enum,
      values: [
        :documentation,
        :justification,
        :citation,
        :predecessor,
        :successor,
        :"derived-from",
        :"depends-on",
        :"composed-of",
        :"part-of",
        :amends,
        :"amended-with",
        :appends,
        :"appended-with",
        :cites,
        :"cited-by",
        :"comments-on",
        :"comment-in",
        :contains,
        :"contained-in",
        :corrects,
        :"correction-in",
        :replaces,
        :"replaced-with",
        :retracts,
        :"retracted-by",
        :signs,
        :"similar-to",
        :supports,
        :"supported-with",
        :transforms,
        :"transformed-into",
        :"transformed-with",
        :documents,
        :"specification-of",
        :"created-with",
        :"cite-as"
      ]
    )
  end
end
