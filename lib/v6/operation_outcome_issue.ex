defmodule Fhir.v6().OperationOutcomeIssue do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_diagnostics, Fhir.v6().Element)
    field(:_expression, [Fhir.v6().Element], default: [])
    field(:_location, [Fhir.v6().Element], default: [])
    field(:_severity, Fhir.v6().Element)
    field(:code, :string)
    field(:details, Fhir.v6().CodeableConcept)
    field(:diagnostics, :string)
    field(:expression, [:string], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:location, [:string], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:severity, :string)
  end
end
