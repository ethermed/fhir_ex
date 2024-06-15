defmodule Fhir.ServiceRequestParameter do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_valueBoolean, Fhir.Element
        field :_valueString, Fhir.Element
        field :code, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.CodeableConcept
        field :valuePeriod, Fhir.Period
        field :valueQuantity, Fhir.Quantity
        field :valueRange, Fhir.Range
        field :valueRatio, Fhir.Ratio
        field :valueString, :string
  end
end
