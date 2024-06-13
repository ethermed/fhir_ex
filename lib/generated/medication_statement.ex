defmodule Fhir.Generated.MedicationStatement do
  use TypedStruct

  typedstruct do
    field :_dateAsserted, Fhir.Generated.Element
        field :_effectiveDateTime, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_renderedDosageInstruction, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :adherence, Fhir.Generated.MedicationStatementAdherence
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :dateAsserted, :datetime
        field :derivedFrom, [Fhir.Generated.Reference], default: []
        field :dosage, [Fhir.Generated.Dosage], default: []
        field :effectiveDateTime, :string
        field :effectivePeriod, Fhir.Generated.Period
        field :effectiveTiming, Fhir.Generated.Timing
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :informationSource, [Fhir.Generated.Reference], default: []
        field :language, :string
        field :medication, Fhir.Generated.CodeableReference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :partOf, [Fhir.Generated.Reference], default: []
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :relatedClinicalInformation, [Fhir.Generated.Reference], default: []
        field :renderedDosageInstruction, :string
        field :resourceType, :string, default: "MedicationStatement"
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
