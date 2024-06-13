defmodule Fhir.Generated.OperationDefinitionParameter do
  use TypedStruct

  typedstruct do
    field :_allowedType, [Fhir.Generated.Element], default: []
        field :_documentation, Fhir.Generated.Element
        field :_max, Fhir.Generated.Element
        field :_min, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_scope, [Fhir.Generated.Element], default: []
        field :_searchType, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :_use, Fhir.Generated.Element
        field :allowedType, [:string], default: []
        field :binding, Fhir.Generated.OperationDefinitionBinding
        field :documentation, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :max, :string
        field :min, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :part, [Fhir.Generated.OperationDefinitionParameter], default: []
        field :referencedFrom, [Fhir.Generated.OperationDefinitionReferencedFrom], default: []
        field :scope, [:string], default: []
        field :searchType, :string
        field :targetProfile, [:string], default: []
        field :type, :string
        field :use, :string
  end
end
