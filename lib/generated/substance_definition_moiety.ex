defmodule Fhir.SubstanceDefinitionMoiety do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_amountString, Fhir.Element
        field :_molecularFormula, Fhir.Element
        field :_name, Fhir.Element
        field :amountQuantity, Fhir.Quantity
        field :amountString, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Identifier
        field :measurementType, Fhir.CodeableConcept
        field :modifierExtension, [Fhir.Extension], default: []
        field :molecularFormula, :string
        field :name, :string
        field :opticalActivity, Fhir.CodeableConcept
        field :role, Fhir.CodeableConcept
        field :stereochemistry, Fhir.CodeableConcept
  end
end
