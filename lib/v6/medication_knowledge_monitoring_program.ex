defmodule Fhir.v6().MedicationKnowledgeMonitoringProgram do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end