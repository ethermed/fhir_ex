defmodule Fhir.TestScriptMetadata do
  use TypedStruct

  typedstruct do
    field(:capability, [Fhir.TestScriptCapability], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:link, [Fhir.TestScriptLink], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
