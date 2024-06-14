defmodule Fhir.v6().ElementDefinitionSlicing do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_ordered, Fhir.v6().Element)
    field(:_rules, Fhir.v6().Element)
    field(:description, :string)
    field(:discriminator, [Fhir.v6().ElementDefinitionDiscriminator], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:ordered, :boolean)
    field(:rules, any())
  end
end
