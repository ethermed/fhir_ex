defmodule Fhir.v6().OperationDefinitionOverload do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.v6().Element)
    field(:_parameterName, [Fhir.v6().Element], default: [])
    field(:comment, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:parameterName, [:string], default: [])
  end
end
