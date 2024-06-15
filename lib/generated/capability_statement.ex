defmodule Fhir.CapabilityStatement do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_acceptLanguage, [Fhir.Element], default: []
        field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_experimental, Fhir.Element
        field :_fhirVersion, Fhir.Element
        field :_format, [Fhir.Element], default: []
        field :_implicitRules, Fhir.Element
        field :_kind, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :_patchFormat, [Fhir.Element], default: []
        field :_publisher, Fhir.Element
        field :_purpose, Fhir.Element
        field :_status, Fhir.Element
        field :_title, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :_versionAlgorithmString, Fhir.Element
        field :acceptLanguage, [:string], default: []
        field :contact, [Fhir.ContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :document, [Fhir.CapabilityStatementDocument], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Extension], default: []
        field :fhirVersion, :string
        field :format, [:string], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implementation, Fhir.CapabilityStatementImplementation
        field :implementationGuide, [:string], default: []
        field :implicitRules, :string
        field :imports, [:string], default: []
        field :instantiates, [:string], default: []
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :kind, :string
        field :language, :string
        field :messaging, [Fhir.CapabilityStatementMessaging], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :patchFormat, [:string], default: []
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "CapabilityStatement"
        field :rest, [Fhir.CapabilityStatementRest], default: []
        field :software, Fhir.CapabilityStatementSoftware
        field :status, :string
        field :text, Fhir.Narrative
        field :title, :string
        field :url, :string
        field :useContext, [Fhir.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Coding
        field :versionAlgorithmString, :string
  end
end
