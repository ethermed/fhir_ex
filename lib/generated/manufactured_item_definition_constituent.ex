defmodule Fhir.ManufacturedItemDefinitionConstituent do
  use TypedStruct

  typedstruct do
    field(:amount, [Fhir.Quantity], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:function, [Fhir.CodeableConcept], default: [])
    field(:hasIngredient, [Fhir.CodeableReference], default: [])
    field(:id, :string)
    field(:location, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
