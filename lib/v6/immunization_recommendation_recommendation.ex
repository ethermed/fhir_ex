defmodule Fhir.v6().ImmunizationRecommendationRecommendation do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_doseNumber, Fhir.v6().Element)
    field(:_series, Fhir.v6().Element)
    field(:_seriesDoses, Fhir.v6().Element)
    field(:contraindicatedVaccineCode, [Fhir.v6().CodeableConcept], default: [])
    field(:dateCriterion, [Fhir.v6().ImmunizationRecommendationDateCriterion], default: [])
    field(:description, :string)
    field(:doseNumber, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:forecastReason, [Fhir.v6().CodeableConcept], default: [])
    field(:forecastStatus, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:series, :string)
    field(:seriesDoses, :string)
    field(:supportingImmunization, [Fhir.v6().Reference], default: [])
    field(:supportingPatientInformation, [Fhir.v6().Reference], default: [])
    field(:targetDisease, [Fhir.v6().CodeableConcept], default: [])
    field(:vaccineCode, [Fhir.v6().CodeableConcept], default: [])
  end
end
