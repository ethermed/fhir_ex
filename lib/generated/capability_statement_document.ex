defmodule Fhir.CapabilityStatementDocument do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_documentation, Fhir.Element
        field :_mode, Fhir.Element
        field :documentation, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :mode, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :profile, :string
  end
end
