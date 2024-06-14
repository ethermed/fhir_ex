defmodule Fhir.v6().DosageDoseAndRate do
  use TypedStruct

  typedstruct do
    field(:doseQuantity, Fhir.v6().Quantity)
    field(:doseRange, Fhir.v6().Range)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:rateQuantity, Fhir.v6().Quantity)
    field(:rateRange, Fhir.v6().Range)
    field(:rateRatio, Fhir.v6().Ratio)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
