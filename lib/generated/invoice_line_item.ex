defmodule Fhir.Generated.InvoiceLineItem do
  use TypedStruct

  typedstruct do
    field :_sequence, Fhir.Generated.Element
        field :_servicedDate, Fhir.Generated.Element
        field :chargeItemCodeableConcept, Fhir.Generated.CodeableConcept
        field :chargeItemReference, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :priceComponent, [Fhir.Generated.MonetaryComponent], default: []
        field :sequence, :float
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Generated.Period
  end
end
