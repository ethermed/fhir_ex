defmodule Fhir.Generated.OperationDefinition do
  use TypedStruct

  typedstruct do
    field :_affectsState, Fhir.Generated.Element
        field :_code, Fhir.Generated.Element
        field :_comment, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instance, Fhir.Generated.Element
        field :_kind, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_resource, [Fhir.Generated.Element], default: []
        field :_status, Fhir.Generated.Element
        field :_system, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :affectsState, :boolean
        field :base, :string
        field :code, :string
        field :comment, :string
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :inputProfile, :string
        field :instance, :boolean
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :kind, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :outputProfile, :string
        field :overload, [Fhir.Generated.OperationDefinitionOverload], default: []
        field :parameter, [Fhir.Generated.OperationDefinitionParameter], default: []
        field :publisher, :string
        field :purpose, :string
        field :resource, [:string], default: []
        field :resourceType, :string, default: "OperationDefinition"
        field :status, :string
        field :system, :boolean
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :type, :boolean
        field :url, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
