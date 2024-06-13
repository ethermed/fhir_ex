defmodule Fhir.Generated.CodeSystemFilter do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_operator, [Fhir.Generated.Element], default: []
        field :_value, Fhir.Generated.Element
        field :code, :string
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :operator, [:string], default: []
        field :value, :string
  end
end
