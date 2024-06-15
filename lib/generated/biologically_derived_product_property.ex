defmodule Fhir.BiologicallyDerivedProductProperty do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_valueBoolean, Fhir.Element
        field :_valueInteger, Fhir.Element
        field :_valueString, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :type, Fhir.CodeableConcept
        field :valueAttachment, Fhir.Attachment
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.CodeableConcept
        field :valueInteger, :float
        field :valuePeriod, Fhir.Period
        field :valueQuantity, Fhir.Quantity
        field :valueRange, Fhir.Range
        field :valueRatio, Fhir.Ratio
        field :valueString, :string
  end
end
