defmodule Fhir.DosageDoseAndRate do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :doseQuantity, Fhir.Quantity
        field :doseRange, Fhir.Range
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :rateQuantity, Fhir.Quantity
        field :rateRange, Fhir.Range
        field :rateRatio, Fhir.Ratio
        field :type, Fhir.CodeableConcept
  end
end
