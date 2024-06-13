defmodule Fhir.Generated.VerificationResultValidator do
  use TypedStruct

  typedstruct do
    field :_identityCertificate, Fhir.Generated.Element
        field :attestationSignature, Fhir.Generated.Signature
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identityCertificate, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :organization, Fhir.Generated.Reference
  end
end
