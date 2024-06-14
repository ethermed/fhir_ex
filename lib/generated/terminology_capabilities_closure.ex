defmodule Fhir.TerminologyCapabilitiesClosure do
  use TypedStruct

  typedstruct do
    field(:_translation, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:translation, :boolean)
  end
end
