defmodule Fhir.ImplementationGuide do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_experimental, Fhir.Element
        field :_fhirVersion, [Fhir.Element], default: []
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_license, Fhir.Element
        field :_name, Fhir.Element
        field :_packageId, Fhir.Element
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
        field :definition, Fhir.ImplementationGuideDefinition
        field :dependsOn, [Fhir.ImplementationGuideDependsOn], default: []
        field :description, :string
        field :experimental, :boolean
        field :extension, [Fhir.Extension], default: []
        field :fhirVersion, [:string], default: []
        field :global, [Fhir.ImplementationGuideGlobal], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :language, :string
        field :license, :string
        field :manifest, Fhir.ImplementationGuideManifest
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :packageId, :string
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "ImplementationGuide"
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
