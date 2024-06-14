defmodule Fhir.v6().NutritionProduct do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:category, [Fhir.v6().CodeableConcept], default: [])
    field(:characteristic, [Fhir.v6().NutritionProductCharacteristic], default: [])
    field(:code, Fhir.v6().CodeableConcept)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:ingredient, [Fhir.v6().NutritionProductIngredient], default: [])
    field(:instance, [Fhir.v6().NutritionProductInstance], default: [])
    field(:knownAllergen, [Fhir.v6().CodeableReference], default: [])
    field(:language, :string)
    field(:manufacturer, [Fhir.v6().Reference], default: [])
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:nutrient, [Fhir.v6().NutritionProductNutrient], default: [])
    field(:resourceType, :string, default: "NutritionProduct")
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
  end
end
