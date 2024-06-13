defmodule Fhir.Generated.ElementDefinitionAdditional do
  use TypedStruct

  typedstruct do
    field :_any, Fhir.Generated.Element
        field :_documentation, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_shortDoco, Fhir.Generated.Element
        field :any, :boolean
        field :documentation, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :purpose, :string
        field :shortDoco, :string
        field :usage, [Fhir.Generated.UsageContext], default: []
        field :valueSet, :string
  end
end
