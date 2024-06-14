defmodule Fhir.VerificationResultPrimarySource do
  use TypedStruct

  typedstruct do
    field(:_validationDate, Fhir.Element)
    field(:canPushUpdates, Fhir.CodeableConcept)
    field(:communicationMethod, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:pushTypeAvailable, [Fhir.CodeableConcept], default: [])
    field(:type, [Fhir.CodeableConcept], default: [])
    field(:validationDate, :datetime)
    field(:validationStatus, Fhir.CodeableConcept)
    field(:who, Fhir.Reference)
  end
end
