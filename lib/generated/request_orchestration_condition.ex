defmodule Fhir.Generated.RequestOrchestrationCondition do
  use TypedStruct

  typedstruct do
    field :_kind, Fhir.Generated.Element
        field :expression, Fhir.Generated.Expression
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :kind, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
