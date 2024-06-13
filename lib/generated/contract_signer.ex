defmodule Fhir.Generated.ContractSigner do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :party, Fhir.Generated.Reference
        field :signature, [Fhir.Generated.Signature], default: []
        field :type, Fhir.Generated.Coding
  end
end
