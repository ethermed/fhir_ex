defmodule Fhir.ElementDefinitionBinding do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_description, Fhir.Element)
    field(:_strength, Fhir.Element)
    field(:additional, [Fhir.ElementDefinitionAdditional], default: [])
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:strength, Ecto.Enum, values: [:required, :extensible, :preferred, :example])
    field(:valueSet, :string)
  end
end
