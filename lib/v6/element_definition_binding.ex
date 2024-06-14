defmodule Fhir.v6().ElementDefinitionBinding do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_strength, Fhir.v6().Element)
    field(:additional, [Fhir.v6().ElementDefinitionAdditional], default: [])
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:strength, any())
    field(:valueSet, :string)
  end
end
