defmodule Fhir.Generated.ContactDetail do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :name, :string
        field :telecom, [Fhir.Generated.ContactPoint], default: []
  end
end
