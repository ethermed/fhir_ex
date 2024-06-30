defmodule Fhir.ElementDefinitionSlicing do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_description, Fhir.Element)
    field(:_ordered, Fhir.Element)
    field(:_rules, Fhir.Element)
    field(:description, :string)
    field(:discriminator, [Fhir.ElementDefinitionDiscriminator], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:ordered, :boolean)
    field(:rules, Ecto.Enum, values: [:closed, :open, :openAtEnd])
  end
end
