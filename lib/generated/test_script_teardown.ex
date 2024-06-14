defmodule Fhir.TestScriptTeardown do
  use TypedStruct

  typedstruct do
    field(:action, [Fhir.TestScriptAction2], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end