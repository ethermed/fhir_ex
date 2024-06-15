defmodule Fhir.Narrative do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_status, Fhir.Element
        field :div, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :status, any()
  end
end
