defmodule Fhir.PlanDefinitionRelatedAction do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_endRelationship, Fhir.Element)
    field(:_relationship, Fhir.Element)
    field(:_targetId, Fhir.Element)
    field(:endRelationship, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:offsetDuration, Fhir.Duration)
    field(:offsetRange, Fhir.Range)
    field(:relationship, :string)
    field(:targetId, :string)
  end
end
