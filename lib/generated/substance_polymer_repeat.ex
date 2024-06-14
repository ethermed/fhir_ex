defmodule Fhir.SubstancePolymerRepeat do
  use TypedStruct

  typedstruct do
    field(:_averageMolecularFormula, Fhir.Element)
    field(:averageMolecularFormula, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:repeatUnit, [Fhir.SubstancePolymerRepeatUnit], default: [])
    field(:repeatUnitAmountType, Fhir.CodeableConcept)
  end
end
