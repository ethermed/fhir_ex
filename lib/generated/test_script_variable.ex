defmodule Fhir.Generated.TestScriptVariable do
  use TypedStruct

  typedstruct do
    field :_defaultValue, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_expression, Fhir.Generated.Element
        field :_headerField, Fhir.Generated.Element
        field :_hint, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_path, Fhir.Generated.Element
        field :_sourceId, Fhir.Generated.Element
        field :defaultValue, :string
        field :description, :string
        field :expression, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :headerField, :string
        field :hint, :string
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :path, :string
        field :sourceId, :string
  end
end
