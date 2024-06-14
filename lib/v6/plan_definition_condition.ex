defmodule Fhir.v6().PlanDefinitionCondition do
  use TypedStruct

  typedstruct do
    field(:_kind, Fhir.v6().Element)
    field(:expression, Fhir.v6().Expression)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:kind, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
