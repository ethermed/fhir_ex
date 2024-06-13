defmodule Fhir.Generated.SpecimenDefinition do
  use TypedStruct

  typedstruct do
    field :_approvalDate, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_derivedFromUri, [Fhir.Generated.Element], default: []
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastReviewDate, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_timeAspect, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :approvalDate, :date
        field :author, [Fhir.Generated.ContactDetail], default: []
        field :collection, [Fhir.Generated.CodeableConcept], default: []
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :derivedFromCanonical, [:string], default: []
        field :derivedFromUri, [:string], default: []
        field :description, :string
        field :editor, [Fhir.Generated.ContactDetail], default: []
        field :effectivePeriod, Fhir.Generated.Period
        field :endorser, [Fhir.Generated.ContactDetail], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :implicitRules, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :patientPreparation, [Fhir.Generated.CodeableConcept], default: []
        field :publisher, :string
        field :purpose, :string
        field :relatedArtifact, [Fhir.Generated.RelatedArtifact], default: []
        field :resourceType, :string, default: "SpecimenDefinition"
        field :reviewer, [Fhir.Generated.ContactDetail], default: []
        field :status, :string
        field :subjectCodeableConcept, Fhir.Generated.CodeableConcept
        field :subjectReference, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :timeAspect, :string
        field :title, :string
        field :topic, [Fhir.Generated.CodeableConcept], default: []
        field :typeCollected, Fhir.Generated.CodeableConcept
        field :typeTested, [Fhir.Generated.SpecimenDefinitionTypeTested], default: []
        field :url, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
