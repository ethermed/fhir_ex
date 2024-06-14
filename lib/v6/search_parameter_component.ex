defmodule Fhir.v6().SearchParameterComponent do
  use TypedStruct

  typedstruct do
    field(:_expression, Fhir.v6().Element)
    field(:definition, :string)
    field(:expression, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
