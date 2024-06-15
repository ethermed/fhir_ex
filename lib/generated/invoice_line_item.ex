defmodule Fhir.InvoiceLineItem do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_sequence, Fhir.Element
        field :_servicedDate, Fhir.Element
        field :chargeItemCodeableConcept, Fhir.CodeableConcept
        field :chargeItemReference, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :priceComponent, [Fhir.MonetaryComponent], default: []
        field :sequence, :float
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Period
  end
end
