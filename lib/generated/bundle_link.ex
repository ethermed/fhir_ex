defmodule Fhir.Generated.BundleLink do
  use TypedStruct

  typedstruct do
    field :_relation, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :relation, :string
        field :url, :string
  end
end
