defmodule Fhir.v6().StructureDefinitionContext do
  use TypedStruct

  typedstruct do
    field(:_expression, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:expression, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, :string)
  end
end
