defmodule Fhir.Generated.ObservationDefinition do
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
        field :_multipleResultsAllowed, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_permittedDataType, [Fhir.Generated.Element], default: []
        field :_preferredReportName, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :approvalDate, :date
        field :author, [Fhir.Generated.ContactDetail], default: []
        field :bodySite, Fhir.Generated.CodeableConcept
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :component, [Fhir.Generated.ObservationDefinitionComponent], default: []
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :derivedFromCanonical, [:string], default: []
        field :derivedFromUri, [:string], default: []
        field :description, :string
        field :device, [Fhir.Generated.Reference], default: []
        field :editor, [Fhir.Generated.ContactDetail], default: []
        field :effectivePeriod, Fhir.Generated.Period
        field :endorser, [Fhir.Generated.ContactDetail], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :hasMember, [Fhir.Generated.Reference], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :implicitRules, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :meta, Fhir.Generated.Meta
        field :method, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :multipleResultsAllowed, :boolean
        field :name, :string
        field :performerType, Fhir.Generated.CodeableConcept
        field :permittedDataType, [:string], default: []
        field :permittedUnit, [Fhir.Generated.Coding], default: []
        field :preferredReportName, :string
        field :publisher, :string
        field :purpose, :string
        field :qualifiedValue, [Fhir.Generated.ObservationDefinitionQualifiedValue], default: []
        field :relatedArtifact, [Fhir.Generated.RelatedArtifact], default: []
        field :resourceType, :string, default: "ObservationDefinition"
        field :reviewer, [Fhir.Generated.ContactDetail], default: []
        field :specimen, [Fhir.Generated.Reference], default: []
        field :status, :string
        field :subject, [Fhir.Generated.CodeableConcept], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :topic, [Fhir.Generated.CodeableConcept], default: []
        field :url, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
