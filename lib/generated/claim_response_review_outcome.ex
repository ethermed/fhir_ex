defmodule Fhir.ClaimResponseReviewOutcome do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_preAuthRef, Fhir.Element)
    field(:decision, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:preAuthPeriod, Fhir.Period)
    field(:preAuthRef, :string)
    field(:reason, [Fhir.CodeableConcept], default: [])
  end
end
