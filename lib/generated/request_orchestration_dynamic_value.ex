defmodule Fhir.RequestOrchestrationDynamicValue do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_path, Fhir.Element
        field :expression, Fhir.Expression
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :path, :string
  end
end
