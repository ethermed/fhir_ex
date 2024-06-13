defmodule Fhir.Generated.CitationCitedArtifact do
  use TypedStruct

  typedstruct do
    field :_dateAccessed, Fhir.Generated.Element
        field :abstract, [Fhir.Generated.CitationAbstract], default: []
        field :classification, [Fhir.Generated.CitationClassification1], default: []
        field :contributorship, Fhir.Generated.CitationContributorship
        field :currentState, [Fhir.Generated.CodeableConcept], default: []
        field :dateAccessed, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :part, Fhir.Generated.CitationPart
        field :publicationForm, [Fhir.Generated.CitationPublicationForm], default: []
        field :relatedIdentifier, [Fhir.Generated.Identifier], default: []
        field :relatesTo, [Fhir.Generated.CitationRelatesTo], default: []
        field :statusDate, [Fhir.Generated.CitationStatusDate1], default: []
        field :title, [Fhir.Generated.CitationTitle], default: []
        field :version, Fhir.Generated.CitationVersion
        field :webLocation, [Fhir.Generated.CitationWebLocation], default: []
  end
end
