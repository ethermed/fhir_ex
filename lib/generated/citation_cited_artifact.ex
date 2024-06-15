defmodule Fhir.CitationCitedArtifact do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_dateAccessed, Fhir.Element
        field :abstract, [Fhir.CitationAbstract], default: []
        field :classification, [Fhir.CitationClassification1], default: []
        field :contributorship, Fhir.CitationContributorship
        field :currentState, [Fhir.CodeableConcept], default: []
        field :dateAccessed, :datetime
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :part, Fhir.CitationPart
        field :publicationForm, [Fhir.CitationPublicationForm], default: []
        field :relatedIdentifier, [Fhir.Identifier], default: []
        field :relatesTo, [Fhir.CitationRelatesTo], default: []
        field :statusDate, [Fhir.CitationStatusDate1], default: []
        field :title, [Fhir.CitationTitle], default: []
        field :version, Fhir.CitationVersion
        field :webLocation, [Fhir.CitationWebLocation], default: []
  end
end
