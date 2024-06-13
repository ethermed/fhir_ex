defmodule Fhir.Generated.ActivityDefinitionDynamicValue do
  use TypedStruct

  typedstruct do
    field :_path, Fhir.Generated.Element
        field :expression, Fhir.Generated.Expression
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :path, :string
  end
end
