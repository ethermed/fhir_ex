defmodule Fhir.ElementDefinitionType do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_aggregation, [Fhir.Element], default: []
        field :_code, Fhir.Element
        field :_versioning, Fhir.Element
        field :aggregation, any()
        field :code, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :profile, [:string], default: []
        field :targetProfile, [:string], default: []
        field :versioning, any()
  end
end
