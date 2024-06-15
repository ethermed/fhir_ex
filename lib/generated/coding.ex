defmodule Fhir.Coding do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_code, Fhir.Element
        field :_display, Fhir.Element
        field :_system, Fhir.Element
        field :_userSelected, Fhir.Element
        field :_version, Fhir.Element
        field :code, :string
        field :display, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :system, :string
        field :userSelected, :boolean
        field :version, :string
  end
end
