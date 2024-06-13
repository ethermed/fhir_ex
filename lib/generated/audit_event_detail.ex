defmodule Fhir.Generated.AuditEventDetail do
  use TypedStruct

  typedstruct do
    field :_valueBase64Binary, Fhir.Generated.Element
        field :_valueBoolean, Fhir.Generated.Element
        field :_valueDateTime, Fhir.Generated.Element
        field :_valueInteger, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :_valueTime, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :valueBase64Binary, :string
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueDateTime, :string
        field :valueInteger, :float
        field :valuePeriod, Fhir.Generated.Period
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
        field :valueRatio, Fhir.Generated.Ratio
        field :valueString, :string
        field :valueTime, :string
  end
end
