defmodule Fhir.Generated.Bundle do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_timestamp, Fhir.Generated.Element
        field :_total, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :entry, [Fhir.Generated.BundleEntry], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :implicitRules, :string
        field :issues, Fhir.Generated.ResourceList
        field :language, :string
        field :link, [Fhir.Generated.BundleLink], default: []
        field :meta, Fhir.Generated.Meta
        field :resourceType, :string, default: "Bundle"
        field :signature, Fhir.Generated.Signature
        field :timestamp, :timestamp
        field :total, :float
        field :type, :string
  end
end
