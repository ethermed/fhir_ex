defmodule Fhir.v6().TestScriptAction do
  use TypedStruct

  typedstruct do
    field(:assert, Fhir.v6().TestScriptAssert)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:operation, Fhir.v6().TestScriptOperation)
  end
end
