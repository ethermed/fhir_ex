defmodule Fhir.Generated.Contributor do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :name, :string
        field :type, any()
  end
end
