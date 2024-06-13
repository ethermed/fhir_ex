defmodule Fhir.Generated.VerificationResultPrimarySource do
  use TypedStruct

  typedstruct do
    field :_validationDate, Fhir.Generated.Element
        field :canPushUpdates, Fhir.Generated.CodeableConcept
        field :communicationMethod, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :pushTypeAvailable, [Fhir.Generated.CodeableConcept], default: []
        field :type, [Fhir.Generated.CodeableConcept], default: []
        field :validationDate, :datetime
        field :validationStatus, Fhir.Generated.CodeableConcept
        field :who, Fhir.Generated.Reference
  end
end
