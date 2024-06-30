defmodule Fhir.CareTeamParticipant do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:coveragePeriod, Fhir.Period)
    field(:coverageTiming, Fhir.Timing)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:member, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:onBehalfOf, Fhir.Reference)
    field(:role, Fhir.CodeableConcept)
  end
end
