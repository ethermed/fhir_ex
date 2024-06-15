defmodule Fhir.OperationDefinitionParameter do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_allowedType, [Fhir.Element], default: []
        field :_documentation, Fhir.Element
        field :_max, Fhir.Element
        field :_min, Fhir.Element
        field :_name, Fhir.Element
        field :_scope, [Fhir.Element], default: []
        field :_searchType, Fhir.Element
        field :_type, Fhir.Element
        field :_use, Fhir.Element
        field :allowedType, [:string], default: []
        field :binding, Fhir.OperationDefinitionBinding
        field :documentation, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :max, :string
        field :min, :float
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :part, [Fhir.OperationDefinitionParameter], default: []
        field :referencedFrom, [Fhir.OperationDefinitionReferencedFrom], default: []
        field :scope, [:string], default: []
        field :searchType, :string
        field :targetProfile, [:string], default: []
        field :type, :string
        field :use, :string
  end
end
