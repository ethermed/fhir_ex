defmodule Fhir.v6().MedicationStatement do
  use TypedStruct

  typedstruct do
    field(:_dateAsserted, Fhir.v6().Element)
    field(:_effectiveDateTime, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_renderedDosageInstruction, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:adherence, Fhir.v6().MedicationStatementAdherence)
    field(:category, [Fhir.v6().CodeableConcept], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:dateAsserted, :datetime)
    field(:derivedFrom, [Fhir.v6().Reference], default: [])
    field(:dosage, [Fhir.v6().Dosage], default: [])
    field(:effectiveDateTime, :string)
    field(:effectivePeriod, Fhir.v6().Period)
    field(:effectiveTiming, Fhir.v6().Timing)
    field(:encounter, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:informationSource, [Fhir.v6().Reference], default: [])
    field(:language, :string)
    field(:medication, Fhir.v6().CodeableReference)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:partOf, [Fhir.v6().Reference], default: [])
    field(:reason, [Fhir.v6().CodeableReference], default: [])
    field(:relatedClinicalInformation, [Fhir.v6().Reference], default: [])
    field(:renderedDosageInstruction, :string)
    field(:resourceType, :string, default: "MedicationStatement")
    field(:status, :string)
    field(:subject, Fhir.v6().Reference)
    field(:text, Fhir.v6().Narrative)
  end
end
