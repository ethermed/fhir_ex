defmodule Fhir.Generated.PackagedProductDefinitionPackaging do
  use TypedStruct

  typedstruct do
    field :_componentPart, Fhir.Generated.Element
        field :_quantity, Fhir.Generated.Element
        field :alternateMaterial, [Fhir.Generated.CodeableConcept], default: []
        field :componentPart, :boolean
        field :containedItem, [Fhir.Generated.PackagedProductDefinitionContainedItem], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :manufacturer, [Fhir.Generated.Reference], default: []
        field :material, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :packaging, [Fhir.Generated.PackagedProductDefinitionPackaging], default: []
        field :property, [Fhir.Generated.PackagedProductDefinitionProperty], default: []
        field :quantity, :float
        field :shelfLifeStorage, [Fhir.Generated.ProductShelfLife], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
