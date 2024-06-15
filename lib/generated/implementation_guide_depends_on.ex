defmodule Fhir.ImplementationGuideDependsOn do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_packageId, Fhir.Element
        field :_reason, Fhir.Element
        field :_version, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :packageId, :string
        field :reason, :string
        field :uri, :string
        field :version, :string
  end
end
