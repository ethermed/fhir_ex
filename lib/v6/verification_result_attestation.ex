defmodule Fhir.v6().VerificationResultAttestation do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:_proxyIdentityCertificate, Fhir.v6().Element)
    field(:_sourceIdentityCertificate, Fhir.v6().Element)
    field(:communicationMethod, Fhir.v6().CodeableConcept)
    field(:date, :date)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:onBehalfOf, Fhir.v6().Reference)
    field(:proxyIdentityCertificate, :string)
    field(:proxySignature, Fhir.v6().Signature)
    field(:sourceIdentityCertificate, :string)
    field(:sourceSignature, Fhir.v6().Signature)
    field(:who, Fhir.v6().Reference)
  end
end
