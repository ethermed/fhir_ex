defmodule Fhir.Generated.SearchParameter do
  use TypedStruct

  typedstruct do
    field :_base, [Fhir.Generated.Element], default: []
        field :_chain, [Fhir.Generated.Element], default: []
        field :_code, Fhir.Generated.Element
        field :_comparator, [Fhir.Generated.Element], default: []
        field :_constraint, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_expression, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_modifier, [Fhir.Generated.Element], default: []
        field :_multipleAnd, Fhir.Generated.Element
        field :_multipleOr, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_processingMode, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_target, [Fhir.Generated.Element], default: []
        field :_title, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :base, [:string], default: []
        field :chain, [:string], default: []
        field :code, :string
        field :comparator, [:string], default: []
        field :component, [Fhir.Generated.SearchParameterComponent], default: []
        field :constraint, :string
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :derivedFrom, :string
        field :description, :string
        field :experimental, :boolean
        field :expression, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifier, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :multipleAnd, :boolean
        field :multipleOr, :boolean
        field :name, :string
        field :processingMode, :string
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "SearchParameter"
        field :status, :string
        field :target, [:string], default: []
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
