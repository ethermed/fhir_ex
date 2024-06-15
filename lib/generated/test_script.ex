defmodule Fhir.TestScript do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_experimental, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :_publisher, Fhir.Element
        field :_purpose, Fhir.Element
        field :_status, Fhir.Element
        field :_title, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :_versionAlgorithmString, Fhir.Element
        field :contact, [Fhir.ContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :destination, [Fhir.TestScriptDestination], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Extension], default: []
        field :fixture, [Fhir.TestScriptFixture], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :metadata, Fhir.TestScriptMetadata
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :origin, [Fhir.TestScriptOrigin], default: []
        field :profile, [:string], default: []
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "TestScript"
        field :scope, [Fhir.TestScriptScope], default: []
        field :setup, Fhir.TestScriptSetup
        field :status, :string
        field :teardown, Fhir.TestScriptTeardown
        field :test, [Fhir.TestScriptTest], default: []
        field :text, Fhir.Narrative
        field :title, :string
        field :url, :string
        field :useContext, [Fhir.UsageContext], default: []
        field :variable, [Fhir.TestScriptVariable], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Coding
        field :versionAlgorithmString, :string
  end
end
