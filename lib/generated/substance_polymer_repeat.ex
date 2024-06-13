defmodule Fhir.Generated.SubstancePolymerRepeat do
  use TypedStruct

  typedstruct do
    field :_averageMolecularFormula, Fhir.Generated.Element
        field :averageMolecularFormula, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :repeatUnit, [Fhir.Generated.SubstancePolymerRepeatUnit], default: []
        field :repeatUnitAmountType, Fhir.Generated.CodeableConcept
  end
end
