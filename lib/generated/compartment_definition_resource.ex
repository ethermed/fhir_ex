defmodule Fhir.CompartmentDefinitionResource do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_code, Fhir.Element
        field :_documentation, Fhir.Element
        field :_endParam, Fhir.Element
        field :_param, [Fhir.Element], default: []
        field :_startParam, Fhir.Element
        field :code, :string
        field :documentation, :string
        field :endParam, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :param, [:string], default: []
        field :startParam, :string
  end
end
