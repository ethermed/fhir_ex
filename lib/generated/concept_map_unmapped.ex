defmodule Fhir.Generated.ConceptMapUnmapped do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_display, Fhir.Generated.Element
        field :_mode, Fhir.Generated.Element
        field :_relationship, Fhir.Generated.Element
        field :code, :string
        field :display, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :mode, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :otherMap, :string
        field :relationship, :string
        field :valueSet, :string
  end
end
