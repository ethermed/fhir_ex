defmodule Fhir.SubstanceIngredient do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:quantity, Fhir.Ratio)
    field(:substanceCodeableConcept, Fhir.CodeableConcept)
    field(:substanceReference, Fhir.Reference)
  end
end
