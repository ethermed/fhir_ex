defmodule Fhir.MedicationStatement do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_dateAsserted, Fhir.Element
        field :_effectiveDateTime, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_renderedDosageInstruction, Fhir.Element
        field :_status, Fhir.Element
        field :adherence, Fhir.MedicationStatementAdherence
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :dateAsserted, :datetime
        field :derivedFrom, [Fhir.Reference], default: []
        field :dosage, [Fhir.Dosage], default: []
        field :effectiveDateTime, :string
        field :effectivePeriod, Fhir.Period
        field :effectiveTiming, Fhir.Timing
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :informationSource, [Fhir.Reference], default: []
        field :language, :string
        field :medication, Fhir.CodeableReference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :partOf, [Fhir.Reference], default: []
        field :reason, [Fhir.CodeableReference], default: []
        field :relatedClinicalInformation, [Fhir.Reference], default: []
        field :renderedDosageInstruction, :string
        field :resourceType, :string, default: "MedicationStatement"
        field :status, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
  end
end
