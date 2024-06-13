defmodule Fhir.Generated.TestScriptTest do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :action, [Fhir.Generated.TestScriptAction1], default: []
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
  end
end
