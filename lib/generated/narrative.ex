defmodule Fhir.Generated.Narrative do
  use TypedStruct

  typedstruct do
    field :_status, Fhir.Generated.Element
        field :div, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :status, any()
  end
end
