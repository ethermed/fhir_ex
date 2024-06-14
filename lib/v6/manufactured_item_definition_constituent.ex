defmodule Fhir.v6().ManufacturedItemDefinitionConstituent do
  use TypedStruct

  typedstruct do
    field(:amount, [Fhir.v6().Quantity], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:function, [Fhir.v6().CodeableConcept], default: [])
    field(:hasIngredient, [Fhir.v6().CodeableReference], default: [])
    field(:id, :string)
    field(:location, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
