defmodule Fhir.Generated.TestScriptRequestHeader do
  use TypedStruct

  typedstruct do
    field :_field, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :field, :string
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :value, :string
  end
end
