defmodule Fhir.Generated.CompartmentDefinitionResource do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_documentation, Fhir.Generated.Element
        field :_endParam, Fhir.Generated.Element
        field :_param, [Fhir.Generated.Element], default: []
        field :_startParam, Fhir.Generated.Element
        field :code, :string
        field :documentation, :string
        field :endParam, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :param, [:string], default: []
        field :startParam, :string
  end
end
