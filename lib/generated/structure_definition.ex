defmodule Fhir.Generated.StructureDefinition do
  use TypedStruct

  typedstruct do
    field :_abstract, Fhir.Generated.Element
        field :_contextInvariant, [Fhir.Generated.Element], default: []
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_derivation, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_fhirVersion, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_kind, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :abstract, :boolean
        field :baseDefinition, :string
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :context, [Fhir.Generated.StructureDefinitionContext], default: []
        field :contextInvariant, [:string], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :derivation, :string
        field :description, :string
        field :differential, Fhir.Generated.StructureDefinitionDifferential
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :fhirVersion, :string
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :keyword, [Fhir.Generated.Coding], default: []
        field :kind, :string
        field :language, :string
        field :mapping, [Fhir.Generated.StructureDefinitionMapping], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "StructureDefinition"
        field :snapshot, Fhir.Generated.StructureDefinitionSnapshot
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :type, :string
        field :url, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
