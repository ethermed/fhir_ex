defmodule Fhir.Generated.EvidenceReportCharacteristic do
  use TypedStruct

  typedstruct do
    field :_exclude, Fhir.Generated.Element
        field :_valueBoolean, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :exclude, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
        field :valueReference, Fhir.Generated.Reference
  end
end
