defmodule Fhir.Generated.SubstanceDefinitionMoiety do
  use TypedStruct

  typedstruct do
    field :_amountString, Fhir.Generated.Element
        field :_molecularFormula, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :amountQuantity, Fhir.Generated.Quantity
        field :amountString, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :measurementType, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :molecularFormula, :string
        field :name, :string
        field :opticalActivity, Fhir.Generated.CodeableConcept
        field :role, Fhir.Generated.CodeableConcept
        field :stereochemistry, Fhir.Generated.CodeableConcept
  end
end
