defmodule Fhir.Generated.CareTeamParticipant do
  use TypedStruct

  typedstruct do
    field :coveragePeriod, Fhir.Generated.Period
        field :coverageTiming, Fhir.Generated.Timing
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :member, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :onBehalfOf, Fhir.Generated.Reference
        field :role, Fhir.Generated.CodeableConcept
  end
end
