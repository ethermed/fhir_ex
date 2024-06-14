defmodule Fhir.v6().ConditionDefinitionPrecondition do
  use TypedStruct

  typedstruct do
    field(:_type, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, :string)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueQuantity, Fhir.v6().Quantity)
  end
end
