defmodule Fhir.CoverageCostToBeneficiary do
  use TypedStruct

  typedstruct do
    field(:category, Fhir.CodeableConcept)
    field(:exception, [Fhir.CoverageException], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:network, Fhir.CodeableConcept)
    field(:term, Fhir.CodeableConcept)
    field(:type, Fhir.CodeableConcept)
    field(:unit, Fhir.CodeableConcept)
    field(:valueMoney, Fhir.Money)
    field(:valueQuantity, Fhir.Quantity)
  end
end
