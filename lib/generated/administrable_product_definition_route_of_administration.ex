defmodule Fhir.AdministrableProductDefinitionRouteOfAdministration do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:firstDose, Fhir.Quantity)
    field(:id, :string)
    field(:maxDosePerDay, Fhir.Quantity)
    field(:maxDosePerTreatmentPeriod, Fhir.Ratio)
    field(:maxSingleDose, Fhir.Quantity)
    field(:maxTreatmentPeriod, Fhir.Duration)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:targetSpecies, [Fhir.AdministrableProductDefinitionTargetSpecies], default: [])
  end
end
