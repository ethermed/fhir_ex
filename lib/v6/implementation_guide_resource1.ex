defmodule Fhir.v6().ImplementationGuideResource1 do
  use TypedStruct

  typedstruct do
    field(:_isExample, Fhir.v6().Element)
    field(:_relativePath, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:isExample, :boolean)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:profile, [:string], default: [])
    field(:reference, Fhir.v6().Reference)
    field(:relativePath, :string)
  end
end
