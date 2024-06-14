defmodule Fhir.v6().CapabilityStatementDocument do
  use TypedStruct

  typedstruct do
    field(:_documentation, Fhir.v6().Element)
    field(:_mode, Fhir.v6().Element)
    field(:documentation, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:profile, :string)
  end
end
