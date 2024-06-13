defmodule Fhir.Generated.VerificationResultAttestation do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_proxyIdentityCertificate, Fhir.Generated.Element
        field :_sourceIdentityCertificate, Fhir.Generated.Element
        field :communicationMethod, Fhir.Generated.CodeableConcept
        field :date, :date
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :onBehalfOf, Fhir.Generated.Reference
        field :proxyIdentityCertificate, :string
        field :proxySignature, Fhir.Generated.Signature
        field :sourceIdentityCertificate, :string
        field :sourceSignature, Fhir.Generated.Signature
        field :who, Fhir.Generated.Reference
  end
end
