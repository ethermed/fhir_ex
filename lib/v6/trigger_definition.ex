defmodule Fhir.v6().TriggerDefinition do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:_timingDate, Fhir.v6().Element)
    field(:_timingDateTime, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:condition, Fhir.v6().Expression)
    field(:data, [Fhir.v6().DataRequirement], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:name, :string)
    field(:subscriptionTopic, :string)
    field(:timingDate, :string)
    field(:timingDateTime, :string)
    field(:timingReference, Fhir.v6().Reference)
    field(:timingTiming, Fhir.v6().Timing)
    field(:type, any())
  end
end
