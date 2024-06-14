defmodule Fhir.ConceptMap do
  use TypedStruct

  typedstruct do
    field(:_approvalDate, Fhir.Element)
    field(:_copyright, Fhir.Element)
    field(:_copyrightLabel, Fhir.Element)
    field(:_date, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_experimental, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_lastReviewDate, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_publisher, Fhir.Element)
    field(:_purpose, Fhir.Element)
    field(:_sourceScopeCanonical, Fhir.Element)
    field(:_sourceScopeUri, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:_targetScopeCanonical, Fhir.Element)
    field(:_targetScopeUri, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:_url, Fhir.Element)
    field(:_version, Fhir.Element)
    field(:_versionAlgorithmString, Fhir.Element)
    field(:additionalAttribute, [Fhir.ConceptMapAdditionalAttribute], default: [])
    field(:approvalDate, :date)
    field(:author, [Fhir.ContactDetail], default: [])
    field(:contact, [Fhir.ContactDetail], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:copyright, :string)
    field(:copyrightLabel, :string)
    field(:date, :datetime)
    field(:description, :string)
    field(:editor, [Fhir.ContactDetail], default: [])
    field(:effectivePeriod, Fhir.Period)
    field(:endorser, [Fhir.ContactDetail], default: [])
    field(:experimental, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:group, [Fhir.ConceptMapGroup], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:jurisdiction, [Fhir.CodeableConcept], default: [])
    field(:language, :string)
    field(:lastReviewDate, :date)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:property, [Fhir.ConceptMapProperty], default: [])
    field(:publisher, :string)
    field(:purpose, :string)
    field(:relatedArtifact, [Fhir.RelatedArtifact], default: [])
    field(:resourceType, :string, default: "ConceptMap")
    field(:reviewer, [Fhir.ContactDetail], default: [])
    field(:sourceScopeCanonical, :string)
    field(:sourceScopeUri, :string)
    field(:status, :string)
    field(:targetScopeCanonical, :string)
    field(:targetScopeUri, :string)
    field(:text, Fhir.Narrative)
    field(:title, :string)
    field(:topic, [Fhir.CodeableConcept], default: [])
    field(:url, :string)
    field(:useContext, [Fhir.UsageContext], default: [])
    field(:version, :string)
    field(:versionAlgorithmCoding, Fhir.Coding)
    field(:versionAlgorithmString, :string)
  end
end