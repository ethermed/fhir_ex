defmodule Fhir.Generated.MedicationRequest do
  use TypedStruct

  typedstruct do
    field :_authoredOn, Fhir.Generated.Element
        field :_doNotPerform, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_intent, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_renderedDosageInstruction, Fhir.Generated.Element
        field :_reported, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_statusChanged, Fhir.Generated.Element
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :courseOfTherapyType, Fhir.Generated.CodeableConcept
        field :device, [Fhir.Generated.CodeableReference], default: []
        field :dispenseRequest, Fhir.Generated.MedicationRequestDispenseRequest
        field :doNotPerform, :boolean
        field :dosageInstruction, [Fhir.Generated.Dosage], default: []
        field :effectiveDosePeriod, Fhir.Generated.Period
        field :encounter, Fhir.Generated.Reference
        field :eventHistory, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :groupIdentifier, Fhir.Generated.Identifier
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :informationSource, [Fhir.Generated.Reference], default: []
        field :insurance, [Fhir.Generated.Reference], default: []
        field :intent, :string
        field :language, :string
        field :medication, Fhir.Generated.CodeableReference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :performer, [Fhir.Generated.Reference], default: []
        field :performerType, Fhir.Generated.CodeableConcept
        field :priorPrescription, Fhir.Generated.Reference
        field :priority, :string
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :recorder, Fhir.Generated.Reference
        field :renderedDosageInstruction, :string
        field :reported, :boolean
        field :requester, Fhir.Generated.Reference
        field :resourceType, :string, default: "MedicationRequest"
        field :status, :string
        field :statusChanged, :datetime
        field :statusReason, Fhir.Generated.CodeableConcept
        field :subject, Fhir.Generated.Reference
        field :substitution, Fhir.Generated.MedicationRequestSubstitution
        field :supportingInformation, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
  end
end
