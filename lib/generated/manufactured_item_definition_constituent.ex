defmodule Fhir.Generated.ManufacturedItemDefinitionConstituent do
  use TypedStruct

  typedstruct do
    field :amount, [Fhir.Generated.Quantity], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :function, [Fhir.Generated.CodeableConcept], default: []
        field :hasIngredient, [Fhir.Generated.CodeableReference], default: []
        field :id, :string
        field :location, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
