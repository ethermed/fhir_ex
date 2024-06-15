defmodule Fhir.AppointmentResponse do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_comment, Fhir.Element
        field :_end, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_occurrenceDate, Fhir.Element
        field :_participantStatus, Fhir.Element
        field :_proposedNewTime, Fhir.Element
        field :_recurrenceId, Fhir.Element
        field :_recurring, Fhir.Element
        field :_start, Fhir.Element
        field :actor, Fhir.Reference
        field :appointment, Fhir.Reference
        field :comment, :string
        field :contained, [Fhir.ResourceList], default: []
        field :end, :timestamp
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :occurrenceDate, :date
        field :participantStatus, :string
        field :participantType, [Fhir.CodeableConcept], default: []
        field :proposedNewTime, :boolean
        field :recurrenceId, :float
        field :recurring, :boolean
        field :resourceType, :string, default: "AppointmentResponse"
        field :start, :timestamp
        field :text, Fhir.Narrative
  end
end
