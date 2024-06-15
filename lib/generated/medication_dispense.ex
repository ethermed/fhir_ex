defmodule Fhir.MedicationDispense do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_recorded, Fhir.Element
        field :_renderedDosageInstruction, Fhir.Element
        field :_status, Fhir.Element
        field :_statusChanged, Fhir.Element
        field :_whenHandedOver, Fhir.Element
        field :_whenPrepared, Fhir.Element
        field :authorizingPrescription, [Fhir.Reference], default: []
        field :basedOn, [Fhir.Reference], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :daysSupply, Fhir.Quantity
        field :destination, Fhir.Reference
        field :dosageInstruction, [Fhir.Dosage], default: []
        field :encounter, Fhir.Reference
        field :eventHistory, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Reference
        field :medication, Fhir.CodeableReference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :notPerformedReason, Fhir.CodeableReference
        field :note, [Fhir.Annotation], default: []
        field :partOf, [Fhir.Reference], default: []
        field :performer, [Fhir.MedicationDispensePerformer], default: []
        field :quantity, Fhir.Quantity
        field :receiver, [Fhir.Reference], default: []
        field :recorded, :datetime
        field :renderedDosageInstruction, :string
        field :resourceType, :string, default: "MedicationDispense"
        field :status, :string
        field :statusChanged, :datetime
        field :subject, Fhir.Reference
        field :substitution, Fhir.MedicationDispenseSubstitution
        field :supportingInformation, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
        field :type, Fhir.CodeableConcept
        field :whenHandedOver, :datetime
        field :whenPrepared, :datetime
  end
end
