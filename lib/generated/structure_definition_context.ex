defmodule Fhir.StructureDefinitionContext do
  use TypedStruct

  typedstruct do
    field(:_expression, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:expression, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, :string)
  end
end
