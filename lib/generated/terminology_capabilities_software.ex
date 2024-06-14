defmodule Fhir.TerminologyCapabilitiesSoftware do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.Element)
    field(:_version, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:version, :string)
  end
end
