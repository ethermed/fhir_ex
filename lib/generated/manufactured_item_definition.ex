defmodule Fhir.Generated.ManufacturedItemDefinition do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :component, [Fhir.Generated.ManufacturedItemDefinitionComponent], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :ingredient, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :manufacturedDoseForm, Fhir.Generated.CodeableConcept
        field :manufacturer, [Fhir.Generated.Reference], default: []
        field :marketingStatus, [Fhir.Generated.MarketingStatus], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :property, [Fhir.Generated.ManufacturedItemDefinitionProperty], default: []
        field :resourceType, :string, default: "ManufacturedItemDefinition"
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :unitOfPresentation, Fhir.Generated.CodeableConcept
  end
end
