defmodule Fhir.v6().SpecimenDefinition do
  use TypedStruct

  typedstruct do
    field(:_approvalDate, Fhir.v6().Element)
    field(:_copyright, Fhir.v6().Element)
    field(:_copyrightLabel, Fhir.v6().Element)
    field(:_date, Fhir.v6().Element)
    field(:_derivedFromUri, [Fhir.v6().Element], default: [])
    field(:_description, Fhir.v6().Element)
    field(:_experimental, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_lastReviewDate, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_publisher, Fhir.v6().Element)
    field(:_purpose, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:_timeAspect, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:_url, Fhir.v6().Element)
    field(:_version, Fhir.v6().Element)
    field(:_versionAlgorithmString, Fhir.v6().Element)
    field(:approvalDate, :date)
    field(:author, [Fhir.v6().ContactDetail], default: [])
    field(:collection, [Fhir.v6().CodeableConcept], default: [])
    field(:contact, [Fhir.v6().ContactDetail], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:copyright, :string)
    field(:copyrightLabel, :string)
    field(:date, :datetime)
    field(:derivedFromCanonical, [:string], default: [])
    field(:derivedFromUri, [:string], default: [])
    field(:description, :string)
    field(:editor, [Fhir.v6().ContactDetail], default: [])
    field(:effectivePeriod, Fhir.v6().Period)
    field(:endorser, [Fhir.v6().ContactDetail], default: [])
    field(:experimental, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:implicitRules, :string)
    field(:jurisdiction, [Fhir.v6().CodeableConcept], default: [])
    field(:language, :string)
    field(:lastReviewDate, :date)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:patientPreparation, [Fhir.v6().CodeableConcept], default: [])
    field(:publisher, :string)
    field(:purpose, :string)
    field(:relatedArtifact, [Fhir.v6().RelatedArtifact], default: [])
    field(:resourceType, :string, default: "SpecimenDefinition")
    field(:reviewer, [Fhir.v6().ContactDetail], default: [])
    field(:status, :string)
    field(:subjectCodeableConcept, Fhir.v6().CodeableConcept)
    field(:subjectReference, Fhir.v6().Reference)
    field(:text, Fhir.v6().Narrative)
    field(:timeAspect, :string)
    field(:title, :string)
    field(:topic, [Fhir.v6().CodeableConcept], default: [])
    field(:typeCollected, Fhir.v6().CodeableConcept)
    field(:typeTested, [Fhir.v6().SpecimenDefinitionTypeTested], default: [])
    field(:url, :string)
    field(:useContext, [Fhir.v6().UsageContext], default: [])
    field(:version, :string)
    field(:versionAlgorithmCoding, Fhir.v6().Coding)
    field(:versionAlgorithmString, :string)
  end
end
