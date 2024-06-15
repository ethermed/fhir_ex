defmodule Fhir.StructureDefinitionMapping do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_comment, Fhir.Element
        field :_identity, Fhir.Element
        field :_name, Fhir.Element
        field :_uri, Fhir.Element
        field :comment, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identity, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :uri, :string
  end
end
