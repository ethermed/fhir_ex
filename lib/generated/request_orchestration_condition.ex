defmodule Fhir.RequestOrchestrationCondition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_kind, Fhir.Element
        field :expression, Fhir.Expression
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :kind, :string
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
