defmodule Fhir.VerificationResultValidator do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_identityCertificate, Fhir.Element
        field :attestationSignature, Fhir.Signature
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identityCertificate, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :organization, Fhir.Reference
  end
end
