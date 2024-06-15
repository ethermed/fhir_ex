defmodule Fhir.SearchParameter do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_base, [Fhir.Element], default: []
        field :_chain, [Fhir.Element], default: []
        field :_code, Fhir.Element
        field :_comparator, [Fhir.Element], default: []
        field :_constraint, Fhir.Element
        field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_experimental, Fhir.Element
        field :_expression, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_modifier, [Fhir.Element], default: []
        field :_multipleAnd, Fhir.Element
        field :_multipleOr, Fhir.Element
        field :_name, Fhir.Element
        field :_processingMode, Fhir.Element
        field :_publisher, Fhir.Element
        field :_purpose, Fhir.Element
        field :_status, Fhir.Element
        field :_target, [Fhir.Element], default: []
        field :_title, Fhir.Element
        field :_type, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :_versionAlgorithmString, Fhir.Element
        field :base, [:string], default: []
        field :chain, [:string], default: []
        field :code, :string
        field :comparator, [:string], default: []
        field :component, [Fhir.SearchParameterComponent], default: []
        field :constraint, :string
        field :contact, [Fhir.ContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :derivedFrom, :string
        field :description, :string
        field :experimental, :boolean
        field :expression, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :modifier, [:string], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :multipleAnd, :boolean
        field :multipleOr, :boolean
        field :name, :string
        field :processingMode, :string
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "SearchParameter"
        field :status, :string
        field :target, [:string], default: []
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
