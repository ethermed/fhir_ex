defmodule Fhir.TriggerDefinition do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.Element)
    field(:_timingDate, Fhir.Element)
    field(:_timingDateTime, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:condition, Fhir.Expression)
    field(:data, [Fhir.DataRequirement], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:name, :string)
    field(:subscriptionTopic, :string)
    field(:timingDate, :string)
    field(:timingDateTime, :string)
    field(:timingReference, Fhir.Reference)
    field(:timingTiming, Fhir.Timing)
    field(:type, any())
  end
end
