defmodule Fhir.CapabilityStatementInteraction do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_code, Fhir.Element
        field :_documentation, Fhir.Element
        field :code, :string
        field :documentation, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
