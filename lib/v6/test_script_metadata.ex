defmodule Fhir.v6().TestScriptMetadata do
  use TypedStruct

  typedstruct do
    field(:capability, [Fhir.v6().TestScriptCapability], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:link, [Fhir.v6().TestScriptLink], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
