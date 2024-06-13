defmodule Fhir.Generated.SubstanceDefinitionStructure do
  use TypedStruct

  typedstruct do
    field :_molecularFormula, Fhir.Generated.Element
        field :_molecularFormulaByMoiety, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :molecularFormula, :string
        field :molecularFormulaByMoiety, :string
        field :molecularWeight, Fhir.Generated.SubstanceDefinitionMolecularWeight
        field :opticalActivity, Fhir.Generated.CodeableConcept
        field :representation, [Fhir.Generated.SubstanceDefinitionRepresentation], default: []
        field :sourceDocument, [Fhir.Generated.Reference], default: []
        field :stereochemistry, Fhir.Generated.CodeableConcept
        field :technique, [Fhir.Generated.CodeableConcept], default: []
  end
end
