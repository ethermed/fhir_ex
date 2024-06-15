defmodule Fhir.Bundle do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_timestamp, Fhir.Element
        field :_total, Fhir.Element
        field :_type, Fhir.Element
        field :entry, [Fhir.BundleEntry], default: []
        field :id, :string
        field :identifier, Fhir.Identifier
        field :implicitRules, :string
        field :issues, Fhir.ResourceList
        field :language, :string
        field :link, [Fhir.BundleLink], default: []
        field :meta, Fhir.Meta
        field :resourceType, :string, default: "Bundle"
        field :signature, Fhir.Signature
        field :timestamp, :timestamp
        field :total, :float
        field :type, :string
  end
end
