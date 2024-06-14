defmodule Fhir.SearchParameterComponent do
  use TypedStruct

  typedstruct do
    field(:_expression, Fhir.Element)
    field(:definition, :string)
    field(:expression, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
