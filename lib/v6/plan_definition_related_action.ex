defmodule Fhir.v6().PlanDefinitionRelatedAction do
  use TypedStruct

  typedstruct do
    field(:_endRelationship, Fhir.v6().Element)
    field(:_relationship, Fhir.v6().Element)
    field(:_targetId, Fhir.v6().Element)
    field(:endRelationship, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:offsetDuration, Fhir.v6().Duration)
    field(:offsetRange, Fhir.v6().Range)
    field(:relationship, :string)
    field(:targetId, :string)
  end
end
