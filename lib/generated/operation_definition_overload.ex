defmodule Fhir.OperationDefinitionOverload do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.Element)
    field(:_parameterName, [Fhir.Element], default: [])
    field(:comment, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:parameterName, [:string], default: [])
  end
end
