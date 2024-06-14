defmodule Fhir.v6().CoverageCostToBeneficiary do
  use TypedStruct

  typedstruct do
    field(:category, Fhir.v6().CodeableConcept)
    field(:exception, [Fhir.v6().CoverageException], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:network, Fhir.v6().CodeableConcept)
    field(:term, Fhir.v6().CodeableConcept)
    field(:type, Fhir.v6().CodeableConcept)
    field(:unit, Fhir.v6().CodeableConcept)
    field(:valueMoney, Fhir.v6().Money)
    field(:valueQuantity, Fhir.v6().Quantity)
  end
end
