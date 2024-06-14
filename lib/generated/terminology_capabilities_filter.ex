defmodule Fhir.TerminologyCapabilitiesFilter do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.Element)
    field(:_op, [Fhir.Element], default: [])
    field(:code, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:op, [:string], default: [])
  end
end
