defmodule Fhir.Generated.SearchParameterComponent do
  use TypedStruct

  typedstruct do
    field :_expression, Fhir.Generated.Element
        field :definition, :string
        field :expression, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
