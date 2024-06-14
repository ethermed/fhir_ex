defmodule Fhir.v6().CapabilityStatementInteraction1 do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_documentation, Fhir.v6().Element)
    field(:code, :string)
    field(:documentation, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
