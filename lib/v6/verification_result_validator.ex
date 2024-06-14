defmodule Fhir.v6().VerificationResultValidator do
  use TypedStruct

  typedstruct do
    field(:_identityCertificate, Fhir.v6().Element)
    field(:attestationSignature, Fhir.v6().Signature)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identityCertificate, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:organization, Fhir.v6().Reference)
  end
end
