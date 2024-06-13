defmodule Fhir.Generated.VerificationResult do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastPerformed, Fhir.Generated.Element
        field :_nextScheduled, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_statusDate, Fhir.Generated.Element
        field :_targetLocation, [Fhir.Generated.Element], default: []
        field :attestation, Fhir.Generated.VerificationResultAttestation
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :failureAction, Fhir.Generated.CodeableConcept
        field :frequency, Fhir.Generated.Timing
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :lastPerformed, :datetime
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :need, Fhir.Generated.CodeableConcept
        field :nextScheduled, :date
        field :primarySource, [Fhir.Generated.VerificationResultPrimarySource], default: []
        field :resourceType, :string, default: "VerificationResult"
        field :status, :string
        field :statusDate, :datetime
        field :target, [Fhir.Generated.Reference], default: []
        field :targetLocation, [:string], default: []
        field :text, Fhir.Generated.Narrative
        field :validationProcess, [Fhir.Generated.CodeableConcept], default: []
        field :validationType, Fhir.Generated.CodeableConcept
        field :validator, [Fhir.Generated.VerificationResultValidator], default: []
  end
end
