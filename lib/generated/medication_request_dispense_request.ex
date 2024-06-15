defmodule Fhir.MedicationRequestDispenseRequest do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_numberOfRepeatsAllowed, Fhir.Element
        field :dispenseInterval, Fhir.Duration
        field :dispenser, Fhir.Reference
        field :dispenserInstruction, [Fhir.Annotation], default: []
        field :doseAdministrationAid, Fhir.CodeableConcept
        field :expectedSupplyDuration, Fhir.Duration
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :initialFill, Fhir.MedicationRequestInitialFill
        field :modifierExtension, [Fhir.Extension], default: []
        field :numberOfRepeatsAllowed, :float
        field :quantity, Fhir.Quantity
        field :validityPeriod, Fhir.Period
  end
end
