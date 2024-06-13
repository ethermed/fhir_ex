defmodule Fhir.Generated.TriggerDefinition do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :_timingDate, Fhir.Generated.Element
        field :_timingDateTime, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :condition, Fhir.Generated.Expression
        field :data, [Fhir.Generated.DataRequirement], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :name, :string
        field :subscriptionTopic, :string
        field :timingDate, :string
        field :timingDateTime, :string
        field :timingReference, Fhir.Generated.Reference
        field :timingTiming, Fhir.Generated.Timing
        field :type, any()
  end
end
