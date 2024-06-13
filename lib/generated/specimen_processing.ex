defmodule Fhir.Generated.SpecimenProcessing do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_timeDateTime, Fhir.Generated.Element
        field :additive, [Fhir.Generated.Reference], default: []
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :method, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :timeDateTime, :string
        field :timePeriod, Fhir.Generated.Period
  end
end
