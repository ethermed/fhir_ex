defmodule Fhir.Generated.StructureDefinitionMapping do
  use TypedStruct

  typedstruct do
    field :_comment, Fhir.Generated.Element
        field :_identity, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_uri, Fhir.Generated.Element
        field :comment, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identity, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :uri, :string
  end
end
