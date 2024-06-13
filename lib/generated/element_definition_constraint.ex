defmodule Fhir.Generated.ElementDefinitionConstraint do
  use TypedStruct

  typedstruct do
    field :_expression, Fhir.Generated.Element
        field :_human, Fhir.Generated.Element
        field :_key, Fhir.Generated.Element
        field :_requirements, Fhir.Generated.Element
        field :_severity, Fhir.Generated.Element
        field :_suppress, Fhir.Generated.Element
        field :expression, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :human, :string
        field :id, :string
        field :key, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :requirements, :string
        field :severity, any()
        field :source, :string
        field :suppress, :boolean
  end
end
