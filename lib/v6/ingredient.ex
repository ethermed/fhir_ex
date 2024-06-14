defmodule Fhir.v6().Ingredient do
  use TypedStruct

  typedstruct do
    field(:_allergenicIndicator, Fhir.v6().Element)
    field(:_comment, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:allergenicIndicator, :boolean)
    field(:comment, :string)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:for, [Fhir.v6().Reference], default: [])
    field(:function, [Fhir.v6().CodeableConcept], default: [])
    field(:group, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:manufacturer, [Fhir.v6().IngredientManufacturer], default: [])
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resourceType, :string, default: "Ingredient")
    field(:role, Fhir.v6().CodeableConcept)
    field(:status, :string)
    field(:substance, Fhir.v6().IngredientSubstance)
    field(:text, Fhir.v6().Narrative)
  end
end
