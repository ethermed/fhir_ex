defmodule Fhir.Generated.GraphDefinitionCompartment do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_expression, Fhir.Generated.Element
        field :_rule, Fhir.Generated.Element
        field :_use, Fhir.Generated.Element
        field :code, :string
        field :description, :string
        field :expression, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :rule, :string
        field :use, :string
  end
end
