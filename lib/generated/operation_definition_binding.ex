defmodule Fhir.OperationDefinitionBinding do
  use TypedStruct

  typedstruct do
    field(:_strength, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:strength, :string)
    field(:valueSet, :string)
  end
end
