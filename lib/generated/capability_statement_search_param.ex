defmodule Fhir.Generated.CapabilityStatementSearchParam do
  use TypedStruct

  typedstruct do
    field :_documentation, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :definition, :string
        field :documentation, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :type, :string
  end
end
