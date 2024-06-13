defmodule Fhir.Generated.CapabilityStatementImplementation do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :custodian, Fhir.Generated.Reference
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :url, :string
  end
end
