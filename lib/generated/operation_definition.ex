defmodule Fhir.OperationDefinition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_affectsState, Fhir.Element
        field :_code, Fhir.Element
        field :_comment, Fhir.Element
        field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_experimental, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_instance, Fhir.Element
        field :_kind, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :_publisher, Fhir.Element
        field :_purpose, Fhir.Element
        field :_resource, [Fhir.Element], default: []
        field :_status, Fhir.Element
        field :_system, Fhir.Element
        field :_title, Fhir.Element
        field :_type, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :_versionAlgorithmString, Fhir.Element
        field :affectsState, :boolean
        field :base, :string
        field :code, :string
        field :comment, :string
        field :contact, [Fhir.ContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :experimental, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :inputProfile, :string
        field :instance, :boolean
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :kind, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :outputProfile, :string
        field :overload, [Fhir.OperationDefinitionOverload], default: []
        field :parameter, [Fhir.OperationDefinitionParameter], default: []
        field :publisher, :string
        field :purpose, :string
        field :resource, [:string], default: []
        field :resourceType, :string, default: "OperationDefinition"
        field :status, :string
        field :system, :boolean
        field :text, Fhir.Narrative
        field :title, :string
        field :type, :boolean
        field :url, :string
        field :useContext, [Fhir.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Coding
        field :versionAlgorithmString, :string
  end
end
