defmodule Fhir.v6().ConditionDefinitionObservation do
  use TypedStruct

  typedstruct do
    field(:category, Fhir.v6().CodeableConcept)
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
