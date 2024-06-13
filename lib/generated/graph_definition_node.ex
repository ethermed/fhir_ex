defmodule Fhir.Generated.GraphDefinitionNode do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_nodeId, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :nodeId, :string
        field :profile, :string
        field :type, :string
  end
end
