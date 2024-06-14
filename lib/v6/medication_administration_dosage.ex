defmodule Fhir.v6().MedicationAdministrationDosage do
  use TypedStruct

  typedstruct do
    field(:_text, Fhir.v6().Element)
    field(:dose, Fhir.v6().Quantity)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:method, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:rateQuantity, Fhir.v6().Quantity)
    field(:rateRatio, Fhir.v6().Ratio)
    field(:route, Fhir.v6().CodeableConcept)
    field(:site, Fhir.v6().CodeableConcept)
    field(:text, :string)
  end
end
