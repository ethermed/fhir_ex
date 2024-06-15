defmodule Fhir.CitationPublicationForm do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_accessionNumber, Fhir.Element
        field :_articleDate, Fhir.Element
        field :_copyright, Fhir.Element
        field :_firstPage, Fhir.Element
        field :_issue, Fhir.Element
        field :_lastPage, Fhir.Element
        field :_lastRevisionDate, Fhir.Element
        field :_pageCount, Fhir.Element
        field :_pageString, Fhir.Element
        field :_publicationDateSeason, Fhir.Element
        field :_publicationDateText, Fhir.Element
        field :_volume, Fhir.Element
        field :accessionNumber, :string
        field :articleDate, :datetime
        field :citedMedium, Fhir.CodeableConcept
        field :copyright, :string
        field :extension, [Fhir.Extension], default: []
        field :firstPage, :string
        field :id, :string
        field :issue, :string
        field :language, [Fhir.CodeableConcept], default: []
        field :lastPage, :string
        field :lastRevisionDate, :datetime
        field :modifierExtension, [Fhir.Extension], default: []
        field :pageCount, :string
        field :pageString, :string
        field :publicationDateSeason, :string
        field :publicationDateText, :string
        field :publishedIn, Fhir.CitationPublishedIn
        field :volume, :string
  end
end
