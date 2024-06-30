defmodule Fhir.OperationOutcomeIssue do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_code, Fhir.Element)
    field(:_diagnostics, Fhir.Element)
    field(:_expression, [Fhir.Element], default: [])
    field(:_location, [Fhir.Element], default: [])
    field(:_severity, Fhir.Element)
    field(:code, :string)
    field(:details, Fhir.CodeableConcept)
    field(:diagnostics, :string)
    field(:expression, [:string], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:location, [:string], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:severity, :string)
  end
end
