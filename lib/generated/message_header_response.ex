defmodule Fhir.Generated.MessageHeaderResponse do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :code, :string
        field :details, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
