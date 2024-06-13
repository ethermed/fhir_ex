defmodule Fhir.Generated.PlanDefinitionRelatedAction do
  use TypedStruct

  typedstruct do
    field :_endRelationship, Fhir.Generated.Element
        field :_relationship, Fhir.Generated.Element
        field :_targetId, Fhir.Generated.Element
        field :endRelationship, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :offsetDuration, Fhir.Generated.Duration
        field :offsetRange, Fhir.Generated.Range
        field :relationship, :string
        field :targetId, :string
  end
end
