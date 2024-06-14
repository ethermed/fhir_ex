defmodule Fhir.v6().CareTeamParticipant do
  use TypedStruct

  typedstruct do
    field(:coveragePeriod, Fhir.v6().Period)
    field(:coverageTiming, Fhir.v6().Timing)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:member, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:onBehalfOf, Fhir.v6().Reference)
    field(:role, Fhir.v6().CodeableConcept)
  end
end
