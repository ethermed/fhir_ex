defmodule Fhir.v6().OperationDefinitionBinding do
  use TypedStruct

  typedstruct do
    field(:_strength, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:strength, :string)
    field(:valueSet, :string)
  end
end
