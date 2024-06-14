defmodule Fhir.v6().TerminologyCapabilitiesFilter do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_op, [Fhir.v6().Element], default: [])
    field(:code, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:op, [:string], default: [])
  end
end
