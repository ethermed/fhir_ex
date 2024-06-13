defmodule Fhir.Generated.OperationDefinitionOverload do
  use TypedStruct

  typedstruct do
    field :_comment, Fhir.Generated.Element
        field :_parameterName, [Fhir.Generated.Element], default: []
        field :comment, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :parameterName, [:string], default: []
  end
end
