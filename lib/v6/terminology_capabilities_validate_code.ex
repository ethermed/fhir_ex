defmodule Fhir.v6().TerminologyCapabilitiesValidateCode do
  use TypedStruct

  typedstruct do
    field(:_translations, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:translations, :boolean)
  end
end
