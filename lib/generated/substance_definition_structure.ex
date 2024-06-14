defmodule Fhir.SubstanceDefinitionStructure do
  use TypedStruct

  typedstruct do
    field(:_molecularFormula, Fhir.Element)
    field(:_molecularFormulaByMoiety, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:molecularFormula, :string)
    field(:molecularFormulaByMoiety, :string)
    field(:molecularWeight, Fhir.SubstanceDefinitionMolecularWeight)
    field(:opticalActivity, Fhir.CodeableConcept)
    field(:representation, [Fhir.SubstanceDefinitionRepresentation], default: [])
    field(:sourceDocument, [Fhir.Reference], default: [])
    field(:stereochemistry, Fhir.CodeableConcept)
    field(:technique, [Fhir.CodeableConcept], default: [])
  end
end
