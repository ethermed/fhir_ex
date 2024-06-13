defmodule Fhir.Generated.MedicationDispense do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_recorded, Fhir.Generated.Element
        field :_renderedDosageInstruction, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_statusChanged, Fhir.Generated.Element
        field :_whenHandedOver, Fhir.Generated.Element
        field :_whenPrepared, Fhir.Generated.Element
        field :authorizingPrescription, [Fhir.Generated.Reference], default: []
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :daysSupply, Fhir.Generated.Quantity
        field :destination, Fhir.Generated.Reference
        field :dosageInstruction, [Fhir.Generated.Dosage], default: []
        field :encounter, Fhir.Generated.Reference
        field :eventHistory, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :medication, Fhir.Generated.CodeableReference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :notPerformedReason, Fhir.Generated.CodeableReference
        field :note, [Fhir.Generated.Annotation], default: []
        field :partOf, [Fhir.Generated.Reference], default: []
        field :performer, [Fhir.Generated.MedicationDispensePerformer], default: []
        field :quantity, Fhir.Generated.Quantity
        field :receiver, [Fhir.Generated.Reference], default: []
        field :recorded, :datetime
        field :renderedDosageInstruction, :string
        field :resourceType, :string, default: "MedicationDispense"
        field :status, :string
        field :statusChanged, :datetime
        field :subject, Fhir.Generated.Reference
        field :substitution, Fhir.Generated.MedicationDispenseSubstitution
        field :supportingInformation, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
        field :whenHandedOver, :datetime
        field :whenPrepared, :datetime
  end
end
