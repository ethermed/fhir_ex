defmodule Fhir.v6().PlanDefinition do
  use TypedStruct

  typedstruct do
    field(:_approvalDate, Fhir.v6().Element)
    field(:_asNeededBoolean, Fhir.v6().Element)
    field(:_copyright, Fhir.v6().Element)
    field(:_copyrightLabel, Fhir.v6().Element)
    field(:_date, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_experimental, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_lastReviewDate, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_publisher, Fhir.v6().Element)
    field(:_purpose, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:_subjectCanonical, Fhir.v6().Element)
    field(:_subtitle, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:_url, Fhir.v6().Element)
    field(:_usage, Fhir.v6().Element)
    field(:_version, Fhir.v6().Element)
    field(:_versionAlgorithmString, Fhir.v6().Element)
    field(:action, [Fhir.v6().PlanDefinitionAction], default: [])
    field(:actor, [Fhir.v6().PlanDefinitionActor], default: [])
    field(:approvalDate, :date)
    field(:asNeededBoolean, :boolean)
    field(:asNeededCodeableConcept, Fhir.v6().CodeableConcept)
    field(:author, [Fhir.v6().ContactDetail], default: [])
    field(:contact, [Fhir.v6().ContactDetail], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:copyright, :string)
    field(:copyrightLabel, :string)
    field(:date, :datetime)
    field(:description, :string)
    field(:editor, [Fhir.v6().ContactDetail], default: [])
    field(:effectivePeriod, Fhir.v6().Period)
    field(:endorser, [Fhir.v6().ContactDetail], default: [])
    field(:experimental, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:goal, [Fhir.v6().PlanDefinitionGoal], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:jurisdiction, [Fhir.v6().CodeableConcept], default: [])
    field(:language, :string)
    field(:lastReviewDate, :date)
    field(:library, [:string], default: [])
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:publisher, :string)
    field(:purpose, :string)
    field(:relatedArtifact, [Fhir.v6().RelatedArtifact], default: [])
    field(:resourceType, :string, default: "PlanDefinition")
    field(:reviewer, [Fhir.v6().ContactDetail], default: [])
    field(:status, :string)
    field(:subjectCanonical, :string)
    field(:subjectCodeableConcept, Fhir.v6().CodeableConcept)
    field(:subjectReference, Fhir.v6().Reference)
    field(:subtitle, :string)
    field(:text, Fhir.v6().Narrative)
    field(:title, :string)
    field(:topic, [Fhir.v6().CodeableConcept], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:url, :string)
    field(:usage, :string)
    field(:useContext, [Fhir.v6().UsageContext], default: [])
    field(:version, :string)
    field(:versionAlgorithmCoding, Fhir.v6().Coding)
    field(:versionAlgorithmString, :string)
  end
end