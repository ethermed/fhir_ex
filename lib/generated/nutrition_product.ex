defmodule Fhir.NutritionProduct do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:category, [Fhir.CodeableConcept], default: [])
    field(:characteristic, [Fhir.NutritionProductCharacteristic], default: [])
    field(:code, Fhir.CodeableConcept)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:ingredient, [Fhir.NutritionProductIngredient], default: [])
    field(:instance, [Fhir.NutritionProductInstance], default: [])
    field(:knownAllergen, [Fhir.CodeableReference], default: [])
    field(:language, :string)
    field(:manufacturer, [Fhir.Reference], default: [])
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:nutrient, [Fhir.NutritionProductNutrient], default: [])
    field(:resourceType, :string, default: "NutritionProduct")
    field(:status, :string)
    field(:text, Fhir.Narrative)
  end
end
