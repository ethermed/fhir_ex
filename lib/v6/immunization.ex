defmodule Fhir.v6().Immunization do
  use TypedStruct

  typedstruct do
    field(:_expirationDate, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_isSubpotent, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_lotNumber, Fhir.v6().Element)
    field(:_occurrenceDateTime, Fhir.v6().Element)
    field(:_occurrenceString, Fhir.v6().Element)
    field(:_primarySource, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:administeredProduct, Fhir.v6().CodeableReference)
    field(:basedOn, [Fhir.v6().Reference], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:doseQuantity, Fhir.v6().Quantity)
    field(:encounter, Fhir.v6().Reference)
    field(:expirationDate, :date)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:fundingSource, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:informationSource, Fhir.v6().CodeableReference)
    field(:isSubpotent, :boolean)
    field(:language, :string)
    field(:location, Fhir.v6().Reference)
    field(:lotNumber, :string)
    field(:manufacturer, Fhir.v6().CodeableReference)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:occurrenceDateTime, :string)
    field(:occurrenceString, :string)
    field(:patient, Fhir.v6().Reference)
    field(:performer, [Fhir.v6().ImmunizationPerformer], default: [])
    field(:primarySource, :boolean)
    field(:programEligibility, [Fhir.v6().ImmunizationProgramEligibility], default: [])
    field(:protocolApplied, [Fhir.v6().ImmunizationProtocolApplied], default: [])
    field(:reaction, [Fhir.v6().ImmunizationReaction], default: [])
    field(:reason, [Fhir.v6().CodeableReference], default: [])
    field(:resourceType, :string, default: "Immunization")
    field(:route, Fhir.v6().CodeableConcept)
    field(:site, Fhir.v6().CodeableConcept)
    field(:status, :string)
    field(:statusReason, Fhir.v6().CodeableConcept)
    field(:subpotentReason, [Fhir.v6().CodeableConcept], default: [])
    field(:supportingInformation, [Fhir.v6().Reference], default: [])
    field(:text, Fhir.v6().Narrative)
    field(:vaccineCode, Fhir.v6().CodeableConcept)
  end
end
