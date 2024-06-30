defmodule Fhir.Measure do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_approvalDate, Fhir.Element)
    field(:_basis, Fhir.Element)
    field(:_clinicalRecommendationStatement, Fhir.Element)
    field(:_copyright, Fhir.Element)
    field(:_copyrightLabel, Fhir.Element)
    field(:_date, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_disclaimer, Fhir.Element)
    field(:_experimental, Fhir.Element)
    field(:_guidance, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_lastReviewDate, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_publisher, Fhir.Element)
    field(:_purpose, Fhir.Element)
    field(:_rateAggregation, Fhir.Element)
    field(:_rationale, Fhir.Element)
    field(:_riskAdjustment, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:_subtitle, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:_url, Fhir.Element)
    field(:_usage, Fhir.Element)
    field(:_version, Fhir.Element)
    field(:_versionAlgorithmString, Fhir.Element)
    field(:approvalDate, :date)
    field(:author, [Fhir.ContactDetail], default: [])
    field(:basis, :string)
    field(:clinicalRecommendationStatement, :string)
    field(:compositeScoring, Fhir.CodeableConcept)
    field(:contact, [Fhir.ContactDetail], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:copyright, :string)
    field(:copyrightLabel, :string)
    field(:date, :datetime)
    field(:description, :string)
    field(:disclaimer, :string)
    field(:editor, [Fhir.ContactDetail], default: [])
    field(:effectivePeriod, Fhir.Period)
    field(:endorser, [Fhir.ContactDetail], default: [])
    field(:experimental, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:group, [Fhir.MeasureGroup], default: [])
    field(:guidance, :string)
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:improvementNotation, Fhir.CodeableConcept)
    field(:jurisdiction, [Fhir.CodeableConcept], default: [])
    field(:language, :string)
    field(:lastReviewDate, :date)
    field(:library, [:string], default: [])
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:publisher, :string)
    field(:purpose, :string)
    field(:rateAggregation, :string)
    field(:rationale, :string)
    field(:relatedArtifact, [Fhir.RelatedArtifact], default: [])
    field(:resourceType, :string, default: "Measure")
    field(:reviewer, [Fhir.ContactDetail], default: [])
    field(:riskAdjustment, :string)
    field(:scoring, Fhir.CodeableConcept)
    field(:scoringUnit, Fhir.CodeableConcept)
    field(:status, :string)
    field(:subjectCodeableConcept, Fhir.CodeableConcept)
    field(:subjectReference, Fhir.Reference)
    field(:subtitle, :string)
    field(:supplementalData, [Fhir.MeasureSupplementalData], default: [])
    field(:term, [Fhir.MeasureTerm], default: [])
    field(:text, Fhir.Narrative)
    field(:title, :string)
    field(:topic, [Fhir.CodeableConcept], default: [])
    field(:type, [Fhir.CodeableConcept], default: [])
    field(:url, :string)
    field(:usage, :string)
    field(:useContext, [Fhir.UsageContext], default: [])
    field(:version, :string)
    field(:versionAlgorithmCoding, Fhir.Coding)
    field(:versionAlgorithmString, :string)
  end
end
