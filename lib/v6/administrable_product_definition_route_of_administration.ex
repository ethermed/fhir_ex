defmodule Fhir.v6().AdministrableProductDefinitionRouteOfAdministration do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:firstDose, Fhir.v6().Quantity)
    field(:id, :string)
    field(:maxDosePerDay, Fhir.v6().Quantity)
    field(:maxDosePerTreatmentPeriod, Fhir.v6().Ratio)
    field(:maxSingleDose, Fhir.v6().Quantity)
    field(:maxTreatmentPeriod, Fhir.v6().Duration)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:targetSpecies, [Fhir.v6().AdministrableProductDefinitionTargetSpecies], default: [])
  end
end
