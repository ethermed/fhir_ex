defmodule Fhir.ImmunizationRecommendationRecommendation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_doseNumber, Fhir.Element
        field :_series, Fhir.Element
        field :_seriesDoses, Fhir.Element
        field :contraindicatedVaccineCode, [Fhir.CodeableConcept], default: []
        field :dateCriterion, [Fhir.ImmunizationRecommendationDateCriterion], default: []
        field :description, :string
        field :doseNumber, :string
        field :extension, [Fhir.Extension], default: []
        field :forecastReason, [Fhir.CodeableConcept], default: []
        field :forecastStatus, Fhir.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :series, :string
        field :seriesDoses, :string
        field :supportingImmunization, [Fhir.Reference], default: []
        field :supportingPatientInformation, [Fhir.Reference], default: []
        field :targetDisease, [Fhir.CodeableConcept], default: []
        field :vaccineCode, [Fhir.CodeableConcept], default: []
  end
end
