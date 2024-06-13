defmodule Fhir.Generated.ElementDefinitionMapping do
  use TypedStruct

  typedstruct do
    field :_comment, Fhir.Generated.Element
        field :_identity, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_map, Fhir.Generated.Element
        field :comment, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identity, :string
        field :language, :string
        field :map, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
