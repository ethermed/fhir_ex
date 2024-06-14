defmodule Fhir.v6().MedicationRequestDispenseRequest do
  use TypedStruct

  typedstruct do
    field(:_numberOfRepeatsAllowed, Fhir.v6().Element)
    field(:dispenseInterval, Fhir.v6().Duration)
    field(:dispenser, Fhir.v6().Reference)
    field(:dispenserInstruction, [Fhir.v6().Annotation], default: [])
    field(:doseAdministrationAid, Fhir.v6().CodeableConcept)
    field(:expectedSupplyDuration, Fhir.v6().Duration)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:initialFill, Fhir.v6().MedicationRequestInitialFill)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:numberOfRepeatsAllowed, :float)
    field(:quantity, Fhir.v6().Quantity)
    field(:validityPeriod, Fhir.v6().Period)
  end
end
