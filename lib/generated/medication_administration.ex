defmodule Fhir.MedicationAdministration do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_isSubPotent, Fhir.Element
        field :_language, Fhir.Element
        field :_occurenceDateTime, Fhir.Element
        field :_recorded, Fhir.Element
        field :_status, Fhir.Element
        field :basedOn, [Fhir.Reference], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :device, [Fhir.CodeableReference], default: []
        field :dosage, Fhir.MedicationAdministrationDosage
        field :encounter, Fhir.Reference
        field :eventHistory, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :isSubPotent, :boolean
        field :language, :string
        field :medication, Fhir.CodeableReference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurenceDateTime, :string
        field :occurencePeriod, Fhir.Period
        field :occurenceTiming, Fhir.Timing
        field :partOf, [Fhir.Reference], default: []
        field :performer, [Fhir.MedicationAdministrationPerformer], default: []
        field :reason, [Fhir.CodeableReference], default: []
        field :recorded, :datetime
        field :request, Fhir.Reference
        field :resourceType, :string, default: "MedicationAdministration"
        field :status, :string
        field :statusReason, [Fhir.CodeableConcept], default: []
        field :subPotentReason, [Fhir.CodeableConcept], default: []
        field :subject, Fhir.Reference
        field :supportingInformation, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
  end
end
