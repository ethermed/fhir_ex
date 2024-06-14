defmodule Fhir.VerificationResultAttestation do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.Element)
    field(:_proxyIdentityCertificate, Fhir.Element)
    field(:_sourceIdentityCertificate, Fhir.Element)
    field(:communicationMethod, Fhir.CodeableConcept)
    field(:date, :date)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:onBehalfOf, Fhir.Reference)
    field(:proxyIdentityCertificate, :string)
    field(:proxySignature, Fhir.Signature)
    field(:sourceIdentityCertificate, :string)
    field(:sourceSignature, Fhir.Signature)
    field(:who, Fhir.Reference)
  end
end
