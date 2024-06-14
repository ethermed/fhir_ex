defmodule Fhir.v6().TerminologyCapabilitiesSoftware do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:_version, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:version, :string)
  end
end
