defmodule Fhir.Generated.Meta do
  use TypedStruct

  typedstruct do
    field :_lastUpdated, Fhir.Generated.Element
        field :_source, Fhir.Generated.Element
        field :_versionId, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :lastUpdated, :timestamp
        field :profile, [:string], default: []
        field :security, [Fhir.Generated.Coding], default: []
        field :source, :string
        field :tag, [Fhir.Generated.Coding], default: []
        field :versionId, :string
  end
end
