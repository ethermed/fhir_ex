defmodule Fhir.v6().VerificationResultPrimarySource do
  use TypedStruct

  typedstruct do
    field(:_validationDate, Fhir.v6().Element)
    field(:canPushUpdates, Fhir.v6().CodeableConcept)
    field(:communicationMethod, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:pushTypeAvailable, [Fhir.v6().CodeableConcept], default: [])
    field(:type, [Fhir.v6().CodeableConcept], default: [])
    field(:validationDate, :datetime)
    field(:validationStatus, Fhir.v6().CodeableConcept)
    field(:who, Fhir.v6().Reference)
  end
end
