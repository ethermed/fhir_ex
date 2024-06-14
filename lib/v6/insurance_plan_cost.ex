defmodule Fhir.v6().InsurancePlanCost do
  use TypedStruct

  typedstruct do
    field(:applicability, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:qualifiers, [Fhir.v6().CodeableConcept], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:value, Fhir.v6().Quantity)
  end
end
