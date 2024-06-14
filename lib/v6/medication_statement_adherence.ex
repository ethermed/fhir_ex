defmodule Fhir.v6().MedicationStatementAdherence do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reason, Fhir.v6().CodeableConcept)
  end
end
