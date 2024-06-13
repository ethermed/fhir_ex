defmodule Fhir.Generated.ValueSet do
  use TypedStruct

  typedstruct do
    field :_approvalDate, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_immutable, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastReviewDate, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :approvalDate, :date
        field :author, [Fhir.Generated.ContactDetail], default: []
        field :compose, Fhir.Generated.ValueSetCompose
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :editor, [Fhir.Generated.ContactDetail], default: []
        field :effectivePeriod, Fhir.Generated.Period
        field :endorser, [Fhir.Generated.ContactDetail], default: []
        field :expansion, Fhir.Generated.ValueSetExpansion
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :immutable, :boolean
        field :implicitRules, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :publisher, :string
        field :purpose, :string
        field :relatedArtifact, [Fhir.Generated.RelatedArtifact], default: []
        field :resourceType, :string, default: "ValueSet"
        field :reviewer, [Fhir.Generated.ContactDetail], default: []
        field :scope, Fhir.Generated.ValueSetScope
        field :status, :string
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
