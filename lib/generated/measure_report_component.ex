defmodule Fhir.Generated.MeasureReportComponent do
  use TypedStruct

  typedstruct do
    field :_linkId, Fhir.Generated.Element
        field :_valueBoolean, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :linkId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
        field :valueReference, Fhir.Generated.Reference
  end
end
