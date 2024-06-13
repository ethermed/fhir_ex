defmodule Fhir.Generated.ResearchStudy do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_descriptionSummary, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :associatedParty, [Fhir.Generated.ResearchStudyAssociatedParty], default: []
        field :classifier, [Fhir.Generated.CodeableConcept], default: []
        field :comparisonGroup, [Fhir.Generated.ResearchStudyComparisonGroup], default: []
        field :condition, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :date, :datetime
        field :description, :string
        field :descriptionSummary, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, [Fhir.Generated.CodeableReference], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :keyword, [Fhir.Generated.CodeableConcept], default: []
        field :label, [Fhir.Generated.ResearchStudyLabel], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :note, [Fhir.Generated.Annotation], default: []
        field :objective, [Fhir.Generated.ResearchStudyObjective], default: []
        field :outcomeMeasure, [Fhir.Generated.ResearchStudyOutcomeMeasure], default: []
        field :partOf, [Fhir.Generated.Reference], default: []
        field :period, Fhir.Generated.Period
        field :phase, Fhir.Generated.CodeableConcept
        field :primaryPurposeType, Fhir.Generated.CodeableConcept
        field :progressStatus, [Fhir.Generated.ResearchStudyProgressStatus], default: []
        field :protocol, [Fhir.Generated.Reference], default: []
        field :recruitment, Fhir.Generated.ResearchStudyRecruitment
        field :region, [Fhir.Generated.CodeableConcept], default: []
        field :relatedArtifact, [Fhir.Generated.RelatedArtifact], default: []
        field :resourceType, :string, default: "ResearchStudy"
        field :result, [Fhir.Generated.Reference], default: []
        field :site, [Fhir.Generated.Reference], default: []
        field :status, :string
        field :studyDesign, [Fhir.Generated.CodeableConcept], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :url, :string
        field :version, :string
        field :whyStopped, Fhir.Generated.CodeableConcept
  end
end
