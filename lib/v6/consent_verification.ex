defmodule Fhir.v6().ConsentVerification do
  use TypedStruct

  typedstruct do
    field(:_verificationDate, [Fhir.v6().Element], default: [])
    field(:_verified, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:verificationDate, [:datetime], default: [])
    field(:verificationType, Fhir.v6().CodeableConcept)
    field(:verified, :boolean)
    field(:verifiedBy, Fhir.v6().Reference)
    field(:verifiedWith, Fhir.v6().Reference)
  end
end
