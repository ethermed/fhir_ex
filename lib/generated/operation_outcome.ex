defmodule Fhir.OperationOutcome do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :contained, [Fhir.ResourceList], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :issue, [Fhir.OperationOutcomeIssue], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :resourceType, :string, default: "OperationOutcome"
        field :text, Fhir.Narrative
  end
end
