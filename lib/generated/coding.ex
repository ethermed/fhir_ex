defmodule Fhir.Generated.Coding do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_display, Fhir.Generated.Element
        field :_system, Fhir.Generated.Element
        field :_userSelected, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :code, :string
        field :display, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :system, :string
        field :userSelected, :boolean
        field :version, :string
  end
end
