defmodule Fhir.TerminologyCapabilitiesTranslation do
  use TypedStruct

  typedstruct do
    field(:_needsMap, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:needsMap, :boolean)
  end
end
