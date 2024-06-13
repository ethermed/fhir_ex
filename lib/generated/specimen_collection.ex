defmodule Fhir.Generated.SpecimenCollection do
  use TypedStruct

  typedstruct do
    field :_collectedDateTime, Fhir.Generated.Element
        field :bodySite, Fhir.Generated.CodeableReference
        field :collectedDateTime, :string
        field :collectedPeriod, Fhir.Generated.Period
        field :collector, Fhir.Generated.Reference
        field :device, Fhir.Generated.CodeableReference
        field :duration, Fhir.Generated.Duration
        field :extension, [Fhir.Generated.Extension], default: []
        field :fastingStatusCodeableConcept, Fhir.Generated.CodeableConcept
        field :fastingStatusDuration, Fhir.Generated.Duration
        field :id, :string
        field :method, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :procedure, Fhir.Generated.Reference
        field :quantity, Fhir.Generated.Quantity
  end
end
