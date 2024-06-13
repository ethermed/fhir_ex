defmodule Fhir.Generated.MedicationAdministration do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_isSubPotent, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_occurenceDateTime, Fhir.Generated.Element
        field :_recorded, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :device, [Fhir.Generated.CodeableReference], default: []
        field :dosage, Fhir.Generated.MedicationAdministrationDosage
        field :encounter, Fhir.Generated.Reference
        field :eventHistory, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :isSubPotent, :boolean
        field :language, :string
        field :medication, Fhir.Generated.CodeableReference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurenceDateTime, :string
        field :occurencePeriod, Fhir.Generated.Period
        field :occurenceTiming, Fhir.Generated.Timing
        field :partOf, [Fhir.Generated.Reference], default: []
        field :performer, [Fhir.Generated.MedicationAdministrationPerformer], default: []
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :recorded, :datetime
        field :request, Fhir.Generated.Reference
        field :resourceType, :string, default: "MedicationAdministration"
        field :status, :string
        field :statusReason, [Fhir.Generated.CodeableConcept], default: []
        field :subPotentReason, [Fhir.Generated.CodeableConcept], default: []
        field :subject, Fhir.Generated.Reference
        field :supportingInformation, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
  end
end
