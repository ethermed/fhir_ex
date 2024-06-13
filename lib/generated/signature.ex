defmodule Fhir.Generated.Signature do
  use TypedStruct

  typedstruct do
    field :_data, Fhir.Generated.Element
        field :_sigFormat, Fhir.Generated.Element
        field :_targetFormat, Fhir.Generated.Element
        field :_when, Fhir.Generated.Element
        field :data, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :onBehalfOf, Fhir.Generated.Reference
        field :sigFormat, :string
        field :targetFormat, :string
        field :type, [Fhir.Generated.Coding], default: []
        field :when, :timestamp
        field :who, Fhir.Generated.Reference
  end
end
