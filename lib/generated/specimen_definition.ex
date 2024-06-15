defmodule Fhir.SpecimenDefinition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_approvalDate, Fhir.Element
        field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_derivedFromUri, [Fhir.Element], default: []
        field :_description, Fhir.Element
        field :_experimental, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_lastReviewDate, Fhir.Element
        field :_name, Fhir.Element
        field :_publisher, Fhir.Element
        field :_purpose, Fhir.Element
        field :_status, Fhir.Element
        field :_timeAspect, Fhir.Element
        field :_title, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :_versionAlgorithmString, Fhir.Element
        field :approvalDate, :date
        field :author, [Fhir.ContactDetail], default: []
        field :collection, [Fhir.CodeableConcept], default: []
        field :contact, [Fhir.ContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :derivedFromCanonical, [:string], default: []
        field :derivedFromUri, [:string], default: []
        field :description, :string
        field :editor, [Fhir.ContactDetail], default: []
        field :effectivePeriod, Fhir.Period
        field :endorser, [Fhir.ContactDetail], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Identifier
        field :implicitRules, :string
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :patientPreparation, [Fhir.CodeableConcept], default: []
        field :publisher, :string
        field :purpose, :string
        field :relatedArtifact, [Fhir.RelatedArtifact], default: []
        field :resourceType, :string, default: "SpecimenDefinition"
        field :reviewer, [Fhir.ContactDetail], default: []
        field :status, :string
        field :subjectCodeableConcept, Fhir.CodeableConcept
        field :subjectReference, Fhir.Reference
        field :text, Fhir.Narrative
        field :timeAspect, :string
        field :title, :string
        field :topic, [Fhir.CodeableConcept], default: []
        field :typeCollected, Fhir.CodeableConcept
        field :typeTested, [Fhir.SpecimenDefinitionTypeTested], default: []
        field :url, :string
        field :useContext, [Fhir.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Coding
        field :versionAlgorithmString, :string
  end
end
