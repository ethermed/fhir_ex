defmodule Fhir.Generated.OperationOutcome do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :issue, [Fhir.Generated.OperationOutcomeIssue], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resourceType, :string, default: "OperationOutcome"
        field :text, Fhir.Generated.Narrative
  end
end
