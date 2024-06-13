defmodule Fhir.Generated.ValueSetFilter do
  use TypedStruct

  typedstruct do
    field :_op, Fhir.Generated.Element
        field :_property, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :op, :string
        field :property, :string
        field :value, :string
  end
end
