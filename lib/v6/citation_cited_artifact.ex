defmodule Fhir.v6().CitationCitedArtifact do
  use TypedStruct

  typedstruct do
    field(:_dateAccessed, Fhir.v6().Element)
    field(:abstract, [Fhir.v6().CitationAbstract], default: [])
    field(:classification, [Fhir.v6().CitationClassification1], default: [])
    field(:contributorship, Fhir.v6().CitationContributorship)
    field(:currentState, [Fhir.v6().CodeableConcept], default: [])
    field(:dateAccessed, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:part, Fhir.v6().CitationPart)
    field(:publicationForm, [Fhir.v6().CitationPublicationForm], default: [])
    field(:relatedIdentifier, [Fhir.v6().Identifier], default: [])
    field(:relatesTo, [Fhir.v6().CitationRelatesTo], default: [])
    field(:statusDate, [Fhir.v6().CitationStatusDate1], default: [])
    field(:title, [Fhir.v6().CitationTitle], default: [])
    field(:version, Fhir.v6().CitationVersion)
    field(:webLocation, [Fhir.v6().CitationWebLocation], default: [])
  end
end
