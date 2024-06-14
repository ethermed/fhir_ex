defmodule Fhir.v6().PlanDefinitionActor do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:option, [Fhir.v6().PlanDefinitionOption], default: [])
    field(:title, :string)
  end
end
