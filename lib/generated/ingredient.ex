defmodule Fhir.Ingredient do
  use TypedStruct

  typedstruct do
    field(:_allergenicIndicator, Fhir.Element)
    field(:_comment, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:allergenicIndicator, :boolean)
    field(:comment, :string)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:for, [Fhir.Reference], default: [])
    field(:function, [Fhir.CodeableConcept], default: [])
    field(:group, Fhir.CodeableConcept)
    field(:id, :string)
    field(:identifier, Fhir.Identifier)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:manufacturer, [Fhir.IngredientManufacturer], default: [])
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:resourceType, :string, default: "Ingredient")
    field(:role, Fhir.CodeableConcept)
    field(:status, :string)
    field(:substance, Fhir.IngredientSubstance)
    field(:text, Fhir.Narrative)
  end
end
