defmodule Fhir.Generated.Reference do
  use TypedStruct

  typedstruct do
    field :_display, Fhir.Generated.Element
        field :_reference, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :display, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :reference, :string
        field :type, :string
  end
end
