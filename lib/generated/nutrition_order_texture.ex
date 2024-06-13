defmodule Fhir.Generated.NutritionOrderTexture do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :foodType, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifier, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
