defmodule Fhir.TestScriptAction1 do
  use TypedStruct

  typedstruct do
    field(:assert, Fhir.TestScriptAssert)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:operation, Fhir.TestScriptOperation)
  end
end
