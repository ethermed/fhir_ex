defmodule Fhir.Contributor do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_name, Fhir.Element
        field :_type, Fhir.Element
        field :contact, [Fhir.ContactDetail], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :name, :string
        field :type, any()
  end
end
