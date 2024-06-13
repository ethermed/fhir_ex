defmodule Fhir.Generated.AppointmentResponse do
  use TypedStruct

  typedstruct do
    field :_comment, Fhir.Generated.Element
        field :_end, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_occurrenceDate, Fhir.Generated.Element
        field :_participantStatus, Fhir.Generated.Element
        field :_proposedNewTime, Fhir.Generated.Element
        field :_recurrenceId, Fhir.Generated.Element
        field :_recurring, Fhir.Generated.Element
        field :_start, Fhir.Generated.Element
        field :actor, Fhir.Generated.Reference
        field :appointment, Fhir.Generated.Reference
        field :comment, :string
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :end, :timestamp
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :occurrenceDate, :date
        field :participantStatus, :string
        field :participantType, [Fhir.Generated.CodeableConcept], default: []
        field :proposedNewTime, :boolean
        field :recurrenceId, :float
        field :recurring, :boolean
        field :resourceType, :string, default: "AppointmentResponse"
        field :start, :timestamp
        field :text, Fhir.Generated.Narrative
  end
end
