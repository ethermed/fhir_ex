defmodule Fhir.ResearchStudy do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_descriptionSummary, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :_status, Fhir.Element
        field :_title, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :associatedParty, [Fhir.ResearchStudyAssociatedParty], default: []
        field :classifier, [Fhir.CodeableConcept], default: []
        field :comparisonGroup, [Fhir.ResearchStudyComparisonGroup], default: []
        field :condition, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :date, :datetime
        field :description, :string
        field :descriptionSummary, :string
        field :extension, [Fhir.Extension], default: []
        field :focus, [Fhir.CodeableReference], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :keyword, [Fhir.CodeableConcept], default: []
        field :label, [Fhir.ResearchStudyLabel], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :note, [Fhir.Annotation], default: []
        field :objective, [Fhir.ResearchStudyObjective], default: []
        field :outcomeMeasure, [Fhir.ResearchStudyOutcomeMeasure], default: []
        field :partOf, [Fhir.Reference], default: []
        field :period, Fhir.Period
        field :phase, Fhir.CodeableConcept
        field :primaryPurposeType, Fhir.CodeableConcept
        field :progressStatus, [Fhir.ResearchStudyProgressStatus], default: []
        field :protocol, [Fhir.Reference], default: []
        field :recruitment, Fhir.ResearchStudyRecruitment
        field :region, [Fhir.CodeableConcept], default: []
        field :relatedArtifact, [Fhir.RelatedArtifact], default: []
        field :resourceType, :string, default: "ResearchStudy"
        field :result, [Fhir.Reference], default: []
        field :site, [Fhir.Reference], default: []
        field :status, :string
        field :studyDesign, [Fhir.CodeableConcept], default: []
        field :text, Fhir.Narrative
        field :title, :string
        field :url, :string
        field :version, :string
        field :whyStopped, Fhir.CodeableConcept
  end
end
