defmodule Fhir.Generated.OperationDefinitionReferencedFrom do
  use TypedStruct

  typedstruct do
    field :_source, Fhir.Generated.Element
        field :_sourceId, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :source, :string
        field :sourceId, :string
  end
end
