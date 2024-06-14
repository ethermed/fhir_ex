defmodule Fhir.SubstanceIngredient do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:quantity, Fhir.Ratio)
    field(:substanceCodeableConcept, Fhir.CodeableConcept)
    field(:substanceReference, Fhir.Reference)
  end
end
