defmodule Fhir.Generated.ImmunizationRecommendationRecommendation do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_doseNumber, Fhir.Generated.Element
        field :_series, Fhir.Generated.Element
        field :_seriesDoses, Fhir.Generated.Element
        field :contraindicatedVaccineCode, [Fhir.Generated.CodeableConcept], default: []
        field :dateCriterion, [Fhir.Generated.ImmunizationRecommendationDateCriterion], default: []
        field :description, :string
        field :doseNumber, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :forecastReason, [Fhir.Generated.CodeableConcept], default: []
        field :forecastStatus, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :series, :string
        field :seriesDoses, :string
        field :supportingImmunization, [Fhir.Generated.Reference], default: []
        field :supportingPatientInformation, [Fhir.Generated.Reference], default: []
        field :targetDisease, [Fhir.Generated.CodeableConcept], default: []
        field :vaccineCode, [Fhir.Generated.CodeableConcept], default: []
  end
end
