defmodule Fhir.v6().SubstanceIngredient do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:quantity, Fhir.v6().Ratio)
    field(:substanceCodeableConcept, Fhir.v6().CodeableConcept)
    field(:substanceReference, Fhir.v6().Reference)
  end
end
