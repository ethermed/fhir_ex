defmodule Fhir.Generated.OperationDefinitionBinding do
  use TypedStruct

  typedstruct do
    field :_strength, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :strength, :string
        field :valueSet, :string
  end
end
