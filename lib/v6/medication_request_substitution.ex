defmodule Fhir.v6().MedicationRequestSubstitution do
  use TypedStruct

  typedstruct do
    field(:_allowedBoolean, Fhir.v6().Element)
    field(:allowedBoolean, :boolean)
    field(:allowedCodeableConcept, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reason, Fhir.v6().CodeableConcept)
  end
end
