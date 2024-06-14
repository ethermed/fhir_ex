defmodule Fhir.CoverageEligibilityResponseError do
  use TypedStruct

  typedstruct do
    field(:_expression, [Fhir.Element], default: [])
    field(:code, Fhir.CodeableConcept)
    field(:expression, [:string], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
