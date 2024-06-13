defmodule Fhir.Generated.Ingredient do
  use TypedStruct

  typedstruct do
    field :_allergenicIndicator, Fhir.Generated.Element
        field :_comment, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :allergenicIndicator, :boolean
        field :comment, :string
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :for, [Fhir.Generated.Reference], default: []
        field :function, [Fhir.Generated.CodeableConcept], default: []
        field :group, Fhir.Generated.CodeableConcept
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :implicitRules, :string
        field :language, :string
        field :manufacturer, [Fhir.Generated.IngredientManufacturer], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resourceType, :string, default: "Ingredient"
        field :role, Fhir.Generated.CodeableConcept
        field :status, :string
        field :substance, Fhir.Generated.IngredientSubstance
        field :text, Fhir.Generated.Narrative
  end
end
