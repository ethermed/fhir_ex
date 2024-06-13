defmodule Fhir.Generated.ServiceRequestParameter do
  use TypedStruct

  typedstruct do
    field :_valueBoolean, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valuePeriod, Fhir.Generated.Period
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
        field :valueRatio, Fhir.Generated.Ratio
        field :valueString, :string
  end
end
