defmodule Fhir.Generated.TestScript do
  use TypedStruct

  typedstruct do
    field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :destination, [Fhir.Generated.TestScriptDestination], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :fixture, [Fhir.Generated.TestScriptFixture], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :metadata, Fhir.Generated.TestScriptMetadata
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :origin, [Fhir.Generated.TestScriptOrigin], default: []
        field :profile, [:string], default: []
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "TestScript"
        field :scope, [Fhir.Generated.TestScriptScope], default: []
        field :setup, Fhir.Generated.TestScriptSetup
        field :status, :string
        field :teardown, Fhir.Generated.TestScriptTeardown
        field :test, [Fhir.Generated.TestScriptTest], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :url, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :variable, [Fhir.Generated.TestScriptVariable], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
