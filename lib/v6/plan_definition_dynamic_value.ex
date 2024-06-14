defmodule Fhir.v6().PlanDefinitionDynamicValue do
  use TypedStruct

  typedstruct do
    field(:_path, Fhir.v6().Element)
    field(:expression, Fhir.v6().Expression)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:path, :string)
  end
end
