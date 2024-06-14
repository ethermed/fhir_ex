defmodule Fhir.TestScriptSetup do
  use TypedStruct

  typedstruct do
    field(:action, [Fhir.TestScriptAction], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end