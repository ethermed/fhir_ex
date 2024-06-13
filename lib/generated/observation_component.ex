defmodule Fhir.Generated.ObservationComponent do
  use TypedStruct

  typedstruct do
    field :_valueBoolean, Fhir.Generated.Element
        field :_valueDateTime, Fhir.Generated.Element
        field :_valueInteger, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :_valueTime, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :dataAbsentReason, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :interpretation, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :referenceRange, [Fhir.Generated.ObservationReferenceRange], default: []
        field :valueAttachment, Fhir.Generated.Attachment
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueDateTime, :string
        field :valueInteger, :float
        field :valuePeriod, Fhir.Generated.Period
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
        field :valueRatio, Fhir.Generated.Ratio
        field :valueReference, Fhir.Generated.Reference
        field :valueSampledData, Fhir.Generated.SampledData
        field :valueString, :string
        field :valueTime, :string
  end
end
