defmodule Fhir.Generated.ImplementationGuide do
  use TypedStruct

  typedstruct do
    field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_fhirVersion, [Fhir.Generated.Element], default: []
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_license, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_packageId, Fhir.Generated.Element
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
        field :definition, Fhir.Generated.ImplementationGuideDefinition
        field :dependsOn, [Fhir.Generated.ImplementationGuideDependsOn], default: []
        field :description, :string
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :fhirVersion, [:string], default: []
        field :global, [Fhir.Generated.ImplementationGuideGlobal], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :license, :string
        field :manifest, Fhir.Generated.ImplementationGuideManifest
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :packageId, :string
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "ImplementationGuide"
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
