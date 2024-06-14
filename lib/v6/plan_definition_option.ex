defmodule Fhir.v6().PlanDefinitionOption do
  use TypedStruct

  typedstruct do
    field(:_type, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:role, Fhir.v6().CodeableConcept)
    field(:type, :string)
    field(:typeCanonical, :string)
    field(:typeReference, Fhir.v6().Reference)
  end
end
