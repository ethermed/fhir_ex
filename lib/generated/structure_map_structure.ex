defmodule Fhir.Generated.StructureMapStructure do
  use TypedStruct

  typedstruct do
    field :_alias, Fhir.Generated.Element
        field :_documentation, Fhir.Generated.Element
        field :_mode, Fhir.Generated.Element
        field :alias, :string
        field :documentation, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :mode, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :url, :string
  end
end
