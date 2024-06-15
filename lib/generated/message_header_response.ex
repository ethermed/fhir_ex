defmodule Fhir.MessageHeaderResponse do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_code, Fhir.Element
        field :code, :string
        field :details, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Identifier
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
