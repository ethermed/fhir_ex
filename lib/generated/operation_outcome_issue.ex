defmodule Fhir.Generated.OperationOutcomeIssue do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_diagnostics, Fhir.Generated.Element
        field :_expression, [Fhir.Generated.Element], default: []
        field :_location, [Fhir.Generated.Element], default: []
        field :_severity, Fhir.Generated.Element
        field :code, :string
        field :details, Fhir.Generated.CodeableConcept
        field :diagnostics, :string
        field :expression, [:string], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :location, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :severity, :string
  end
end
