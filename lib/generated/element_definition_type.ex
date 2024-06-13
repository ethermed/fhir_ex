defmodule Fhir.Generated.ElementDefinitionType do
  use TypedStruct

  typedstruct do
    field :_aggregation, [Fhir.Generated.Element], default: []
        field :_code, Fhir.Generated.Element
        field :_versioning, Fhir.Generated.Element
        field :aggregation, any()
        field :code, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :profile, [:string], default: []
        field :targetProfile, [:string], default: []
        field :versioning, any()
  end
end
