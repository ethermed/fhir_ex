defmodule Fhir.Generated.SubstanceIngredient do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :quantity, Fhir.Generated.Ratio
        field :substanceCodeableConcept, Fhir.Generated.CodeableConcept
        field :substanceReference, Fhir.Generated.Reference
  end
end
