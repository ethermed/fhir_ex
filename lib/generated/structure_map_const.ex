defmodule Fhir.Generated.StructureMapConst do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :value, :string
  end
end
