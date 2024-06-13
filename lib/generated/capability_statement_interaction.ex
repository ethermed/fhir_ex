defmodule Fhir.Generated.CapabilityStatementInteraction do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_documentation, Fhir.Generated.Element
        field :code, :string
        field :documentation, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
