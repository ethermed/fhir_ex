defmodule Fhir.v6().TerminologyCapabilitiesTranslation do
  use TypedStruct

  typedstruct do
    field(:_needsMap, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:needsMap, :boolean)
  end
end
