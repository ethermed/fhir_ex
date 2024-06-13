defmodule Fhir.Generated.CodeSystemProperty do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :_uri, Fhir.Generated.Element
        field :code, :string
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, :string
        field :uri, :string
  end
end
