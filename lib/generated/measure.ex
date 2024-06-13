defmodule Fhir.Generated.Measure do
  use TypedStruct

  typedstruct do
    field :_approvalDate, Fhir.Generated.Element
        field :_basis, Fhir.Generated.Element
        field :_clinicalRecommendationStatement, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_disclaimer, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_guidance, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastReviewDate, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_rateAggregation, Fhir.Generated.Element
        field :_rationale, Fhir.Generated.Element
        field :_riskAdjustment, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_subtitle, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_usage, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :approvalDate, :date
        field :author, [Fhir.Generated.ContactDetail], default: []
        field :basis, :string
        field :clinicalRecommendationStatement, :string
        field :compositeScoring, Fhir.Generated.CodeableConcept
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :disclaimer, :string
        field :editor, [Fhir.Generated.ContactDetail], default: []
        field :effectivePeriod, Fhir.Generated.Period
        field :endorser, [Fhir.Generated.ContactDetail], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :group, [Fhir.Generated.MeasureGroup], default: []
        field :guidance, :string
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :improvementNotation, Fhir.Generated.CodeableConcept
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :library, [:string], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :publisher, :string
        field :purpose, :string
        field :rateAggregation, :string
        field :rationale, :string
        field :relatedArtifact, [Fhir.Generated.RelatedArtifact], default: []
        field :resourceType, :string, default: "Measure"
        field :reviewer, [Fhir.Generated.ContactDetail], default: []
        field :riskAdjustment, :string
        field :scoring, Fhir.Generated.CodeableConcept
        field :scoringUnit, Fhir.Generated.CodeableConcept
        field :status, :string
        field :subjectCodeableConcept, Fhir.Generated.CodeableConcept
        field :subjectReference, Fhir.Generated.Reference
        field :subtitle, :string
        field :supplementalData, [Fhir.Generated.MeasureSupplementalData], default: []
        field :term, [Fhir.Generated.MeasureTerm], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :topic, [Fhir.Generated.CodeableConcept], default: []
        field :type, [Fhir.Generated.CodeableConcept], default: []
        field :url, :string
        field :usage, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
