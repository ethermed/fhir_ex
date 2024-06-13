defmodule Fhir.Generated.ImplementationGuideDependsOn do
  use TypedStruct

  typedstruct do
    field :_packageId, Fhir.Generated.Element
        field :_reason, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :packageId, :string
        field :reason, :string
        field :uri, :string
        field :version, :string
  end
end
