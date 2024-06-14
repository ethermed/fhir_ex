defmodule Fhir.v6().TerminologyCapabilitiesClosure do
  use TypedStruct

  typedstruct do
    field(:_translation, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:translation, :boolean)
  end
end
