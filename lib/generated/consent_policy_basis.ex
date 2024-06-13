defmodule Fhir.Generated.ConsentPolicyBasis do
  use TypedStruct

  typedstruct do
    field :_url, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reference, Fhir.Generated.Reference
        field :url, :string
  end
end
