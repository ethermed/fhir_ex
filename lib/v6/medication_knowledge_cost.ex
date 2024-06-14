defmodule Fhir.v6().MedicationKnowledgeCost do
  use TypedStruct

  typedstruct do
    field(:_source, Fhir.v6().Element)
    field(:costCodeableConcept, Fhir.v6().CodeableConcept)
    field(:costMoney, Fhir.v6().Money)
    field(:effectiveDate, [Fhir.v6().Period], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:source, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
