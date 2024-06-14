defmodule Fhir.v6().SubstanceDefinitionStructure do
  use TypedStruct

  typedstruct do
    field(:_molecularFormula, Fhir.v6().Element)
    field(:_molecularFormulaByMoiety, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:molecularFormula, :string)
    field(:molecularFormulaByMoiety, :string)
    field(:molecularWeight, Fhir.v6().SubstanceDefinitionMolecularWeight)
    field(:opticalActivity, Fhir.v6().CodeableConcept)
    field(:representation, [Fhir.v6().SubstanceDefinitionRepresentation], default: [])
    field(:sourceDocument, [Fhir.v6().Reference], default: [])
    field(:stereochemistry, Fhir.v6().CodeableConcept)
    field(:technique, [Fhir.v6().CodeableConcept], default: [])
  end
end
