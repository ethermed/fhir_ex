defmodule Fhir.v6().CoverageEligibilityResponseError do
  use TypedStruct

  typedstruct do
    field(:_expression, [Fhir.v6().Element], default: [])
    field(:code, Fhir.v6().CodeableConcept)
    field(:expression, [:string], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
