defmodule Fhir.Generated.TestScriptFixture do
  use TypedStruct

  typedstruct do
    field :_autocreate, Fhir.Generated.Element
        field :_autodelete, Fhir.Generated.Element
        field :autocreate, :boolean
        field :autodelete, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resource, Fhir.Generated.Reference
  end
end
