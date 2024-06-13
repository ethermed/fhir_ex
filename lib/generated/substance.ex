defmodule Fhir.Generated.Substance do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_expiry, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instance, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :code, Fhir.Generated.CodeableReference
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :expiry, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :ingredient, [Fhir.Generated.SubstanceIngredient], default: []
        field :instance, :boolean
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :quantity, Fhir.Generated.Quantity
        field :resourceType, :string, default: "Substance"
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
