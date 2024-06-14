defmodule Fhir.v6().SubstancePolymerRepeat do
  use TypedStruct

  typedstruct do
    field(:_averageMolecularFormula, Fhir.v6().Element)
    field(:averageMolecularFormula, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:repeatUnit, [Fhir.v6().SubstancePolymerRepeatUnit], default: [])
    field(:repeatUnitAmountType, Fhir.v6().CodeableConcept)
  end
end
