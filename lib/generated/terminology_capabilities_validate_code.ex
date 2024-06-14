defmodule Fhir.TerminologyCapabilitiesValidateCode do
  use TypedStruct

  typedstruct do
    field(:_translations, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:translations, :boolean)
  end
end
