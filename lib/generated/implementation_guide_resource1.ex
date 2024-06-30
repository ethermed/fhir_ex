defmodule Fhir.ImplementationGuideResource1 do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_isExample, Fhir.Element)
    field(:_relativePath, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:isExample, :boolean)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:profile, [:string], default: [])
    field(:reference, Fhir.Reference)
    field(:relativePath, :string)
  end
end
