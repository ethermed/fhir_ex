defmodule Fhir.SpecimenCollection do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_collectedDateTime, Fhir.Element
        field :bodySite, Fhir.CodeableReference
        field :collectedDateTime, :string
        field :collectedPeriod, Fhir.Period
        field :collector, Fhir.Reference
        field :device, Fhir.CodeableReference
        field :duration, Fhir.Duration
        field :extension, [Fhir.Extension], default: []
        field :fastingStatusCodeableConcept, Fhir.CodeableConcept
        field :fastingStatusDuration, Fhir.Duration
        field :id, :string
        field :method, Fhir.CodeableConcept
        field :modifierExtension, [Fhir.Extension], default: []
        field :procedure, Fhir.Reference
        field :quantity, Fhir.Quantity
  end
end
