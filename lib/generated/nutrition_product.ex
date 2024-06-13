defmodule Fhir.Generated.NutritionProduct do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :characteristic, [Fhir.Generated.NutritionProductCharacteristic], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :ingredient, [Fhir.Generated.NutritionProductIngredient], default: []
        field :instance, [Fhir.Generated.NutritionProductInstance], default: []
        field :knownAllergen, [Fhir.Generated.CodeableReference], default: []
        field :language, :string
        field :manufacturer, [Fhir.Generated.Reference], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :nutrient, [Fhir.Generated.NutritionProductNutrient], default: []
        field :resourceType, :string, default: "NutritionProduct"
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
