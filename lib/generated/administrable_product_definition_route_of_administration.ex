defmodule Fhir.Generated.AdministrableProductDefinitionRouteOfAdministration do
  use TypedStruct

  typedstruct do
    field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :firstDose, Fhir.Generated.Quantity
        field :id, :string
        field :maxDosePerDay, Fhir.Generated.Quantity
        field :maxDosePerTreatmentPeriod, Fhir.Generated.Ratio
        field :maxSingleDose, Fhir.Generated.Quantity
        field :maxTreatmentPeriod, Fhir.Generated.Duration
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :targetSpecies, [Fhir.Generated.AdministrableProductDefinitionTargetSpecies], default: []
  end
end
