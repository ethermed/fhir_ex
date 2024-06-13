defmodule Fhir.Generated.MedicationRequestDispenseRequest do
  use TypedStruct

  typedstruct do
    field :_numberOfRepeatsAllowed, Fhir.Generated.Element
        field :dispenseInterval, Fhir.Generated.Duration
        field :dispenser, Fhir.Generated.Reference
        field :dispenserInstruction, [Fhir.Generated.Annotation], default: []
        field :doseAdministrationAid, Fhir.Generated.CodeableConcept
        field :expectedSupplyDuration, Fhir.Generated.Duration
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :initialFill, Fhir.Generated.MedicationRequestInitialFill
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :numberOfRepeatsAllowed, :float
        field :quantity, Fhir.Generated.Quantity
        field :validityPeriod, Fhir.Generated.Period
  end
end
