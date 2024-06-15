defmodule Fhir.StructureDefinition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_abstract, Fhir.Element
        field :_contextInvariant, [Fhir.Element], default: []
        field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_derivation, Fhir.Element
        field :_description, Fhir.Element
        field :_experimental, Fhir.Element
        field :_fhirVersion, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_kind, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :_publisher, Fhir.Element
        field :_purpose, Fhir.Element
        field :_status, Fhir.Element
        field :_title, Fhir.Element
        field :_type, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :_versionAlgorithmString, Fhir.Element
        field :abstract, :boolean
        field :baseDefinition, :string
        field :contact, [Fhir.ContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :context, [Fhir.StructureDefinitionContext], default: []
        field :contextInvariant, [:string], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :derivation, :string
        field :description, :string
        field :differential, Fhir.StructureDefinitionDifferential
        field :experimental, :boolean
        field :extension, [Fhir.Extension], default: []
        field :fhirVersion, :string
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :keyword, [Fhir.Coding], default: []
        field :kind, :string
        field :language, :string
        field :mapping, [Fhir.StructureDefinitionMapping], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "StructureDefinition"
        field :snapshot, Fhir.StructureDefinitionSnapshot
        field :status, :string
        field :text, Fhir.Narrative
        field :title, :string
        field :type, :string
        field :url, :string
        field :useContext, [Fhir.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Coding
        field :versionAlgorithmString, :string
  end
end
