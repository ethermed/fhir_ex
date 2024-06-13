defmodule Fhir.Generated.CitationPublicationForm do
  use TypedStruct

  typedstruct do
    field :_accessionNumber, Fhir.Generated.Element
        field :_articleDate, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_firstPage, Fhir.Generated.Element
        field :_issue, Fhir.Generated.Element
        field :_lastPage, Fhir.Generated.Element
        field :_lastRevisionDate, Fhir.Generated.Element
        field :_pageCount, Fhir.Generated.Element
        field :_pageString, Fhir.Generated.Element
        field :_publicationDateSeason, Fhir.Generated.Element
        field :_publicationDateText, Fhir.Generated.Element
        field :_volume, Fhir.Generated.Element
        field :accessionNumber, :string
        field :articleDate, :datetime
        field :citedMedium, Fhir.Generated.CodeableConcept
        field :copyright, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :firstPage, :string
        field :id, :string
        field :issue, :string
        field :language, [Fhir.Generated.CodeableConcept], default: []
        field :lastPage, :string
        field :lastRevisionDate, :datetime
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :pageCount, :string
        field :pageString, :string
        field :publicationDateSeason, :string
        field :publicationDateText, :string
        field :publishedIn, Fhir.Generated.CitationPublishedIn
        field :volume, :string
  end
end
