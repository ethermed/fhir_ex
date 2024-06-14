defmodule Fhir.TerminologyCapabilitiesImplementation do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_url, Fhir.Element)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:url, :string)
  end
end