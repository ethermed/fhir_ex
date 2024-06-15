defmodule Fhir.VerificationResult do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_lastPerformed, Fhir.Element
        field :_nextScheduled, Fhir.Element
        field :_status, Fhir.Element
        field :_statusDate, Fhir.Element
        field :_targetLocation, [Fhir.Element], default: []
        field :attestation, Fhir.VerificationResultAttestation
        field :contained, [Fhir.ResourceList], default: []
        field :extension, [Fhir.Extension], default: []
        field :failureAction, Fhir.CodeableConcept
        field :frequency, Fhir.Timing
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :lastPerformed, :datetime
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :need, Fhir.CodeableConcept
        field :nextScheduled, :date
        field :primarySource, [Fhir.VerificationResultPrimarySource], default: []
        field :resourceType, :string, default: "VerificationResult"
        field :status, :string
        field :statusDate, :datetime
        field :target, [Fhir.Reference], default: []
        field :targetLocation, [:string], default: []
        field :text, Fhir.Narrative
        field :validationProcess, [Fhir.CodeableConcept], default: []
        field :validationType, Fhir.CodeableConcept
        field :validator, [Fhir.VerificationResultValidator], default: []
  end
end
