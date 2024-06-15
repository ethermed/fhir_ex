defmodule Fhir.MedicationRequest do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_authoredOn, Fhir.Element
        field :_doNotPerform, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_intent, Fhir.Element
        field :_language, Fhir.Element
        field :_priority, Fhir.Element
        field :_renderedDosageInstruction, Fhir.Element
        field :_reported, Fhir.Element
        field :_status, Fhir.Element
        field :_statusChanged, Fhir.Element
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Reference], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :courseOfTherapyType, Fhir.CodeableConcept
        field :device, [Fhir.CodeableReference], default: []
        field :dispenseRequest, Fhir.MedicationRequestDispenseRequest
        field :doNotPerform, :boolean
        field :dosageInstruction, [Fhir.Dosage], default: []
        field :effectiveDosePeriod, Fhir.Period
        field :encounter, Fhir.Reference
        field :eventHistory, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :groupIdentifier, Fhir.Identifier
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :informationSource, [Fhir.Reference], default: []
        field :insurance, [Fhir.Reference], default: []
        field :intent, :string
        field :language, :string
        field :medication, Fhir.CodeableReference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :performer, [Fhir.Reference], default: []
        field :performerType, Fhir.CodeableConcept
        field :priorPrescription, Fhir.Reference
        field :priority, :string
        field :reason, [Fhir.CodeableReference], default: []
        field :recorder, Fhir.Reference
        field :renderedDosageInstruction, :string
        field :reported, :boolean
        field :requester, Fhir.Reference
        field :resourceType, :string, default: "MedicationRequest"
        field :status, :string
        field :statusChanged, :datetime
        field :statusReason, Fhir.CodeableConcept
        field :subject, Fhir.Reference
        field :substitution, Fhir.MedicationRequestSubstitution
        field :supportingInformation, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
  end
end
