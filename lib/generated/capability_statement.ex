defmodule Fhir.Generated.CapabilityStatement do
  use TypedStruct

  typedstruct do
    field :_acceptLanguage, [Fhir.Generated.Element], default: []
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_fhirVersion, Fhir.Generated.Element
        field :_format, [Fhir.Generated.Element], default: []
        field :_implicitRules, Fhir.Generated.Element
        field :_kind, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_patchFormat, [Fhir.Generated.Element], default: []
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :acceptLanguage, [:string], default: []
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :document, [Fhir.Generated.CapabilityStatementDocument], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :fhirVersion, :string
        field :format, [:string], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implementation, Fhir.Generated.CapabilityStatementImplementation
        field :implementationGuide, [:string], default: []
        field :implicitRules, :string
        field :imports, [:string], default: []
        field :instantiates, [:string], default: []
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :kind, :string
        field :language, :string
        field :messaging, [Fhir.Generated.CapabilityStatementMessaging], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :patchFormat, [:string], default: []
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "CapabilityStatement"
        field :rest, [Fhir.Generated.CapabilityStatementRest], default: []
        field :software, Fhir.Generated.CapabilityStatementSoftware
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :url, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
