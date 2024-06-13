defmodule Fhir.Generated.ManufacturedItemDefinitionComponent do
  use TypedStruct

  typedstruct do
    field :amount, [Fhir.Generated.Quantity], default: []
        field :component, [Fhir.Generated.ManufacturedItemDefinitionComponent], default: []
        field :constituent, [Fhir.Generated.ManufacturedItemDefinitionConstituent], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :function, [Fhir.Generated.CodeableConcept], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :property, [Fhir.Generated.ManufacturedItemDefinitionProperty], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
