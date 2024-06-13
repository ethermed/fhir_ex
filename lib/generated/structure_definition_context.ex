defmodule Fhir.Generated.StructureDefinitionContext do
  use TypedStruct

  typedstruct do
    field :_expression, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :expression, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, :string
  end
end
