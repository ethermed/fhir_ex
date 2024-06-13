defmodule Fhir.Generated.DosageDoseAndRate do
  use TypedStruct

  typedstruct do
    field :doseQuantity, Fhir.Generated.Quantity
        field :doseRange, Fhir.Generated.Range
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :rateQuantity, Fhir.Generated.Quantity
        field :rateRange, Fhir.Generated.Range
        field :rateRatio, Fhir.Generated.Ratio
        field :type, Fhir.Generated.CodeableConcept
  end
end
