defmodule Fhir.Generated.ValueSetProperty do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_uri, Fhir.Generated.Element
        field :code, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :uri, :string
  end
end
