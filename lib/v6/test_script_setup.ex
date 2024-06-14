defmodule Fhir.v6().TestScriptSetup do
  use TypedStruct

  typedstruct do
    field(:action, [Fhir.v6().TestScriptAction], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
