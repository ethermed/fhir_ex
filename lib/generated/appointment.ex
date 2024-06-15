defmodule Fhir.Appointment do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_cancellationDate, Fhir.Element
        field :_created, Fhir.Element
        field :_description, Fhir.Element
        field :_end, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_minutesDuration, Fhir.Element
        field :_occurrenceChanged, Fhir.Element
        field :_recurrenceId, Fhir.Element
        field :_start, Fhir.Element
        field :_status, Fhir.Element
        field :account, [Fhir.Reference], default: []
        field :appointmentType, Fhir.CodeableConcept
        field :basedOn, [Fhir.Reference], default: []
        field :cancellationDate, :datetime
        field :cancellationReason, Fhir.CodeableConcept
        field :class, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :created, :datetime
        field :description, :string
        field :end, :timestamp
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :minutesDuration, :float
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurrenceChanged, :boolean
        field :originatingAppointment, Fhir.Reference
        field :participant, [Fhir.AppointmentParticipant], default: []
        field :patientInstruction, [Fhir.CodeableReference], default: []
        field :previousAppointment, Fhir.Reference
        field :priority, Fhir.CodeableConcept
        field :reason, [Fhir.CodeableReference], default: []
        field :recurrenceId, :float
        field :recurrenceTemplate, [Fhir.AppointmentRecurrenceTemplate], default: []
        field :replaces, [Fhir.Reference], default: []
        field :requestedPeriod, [Fhir.Period], default: []
        field :resourceType, :string, default: "Appointment"
        field :serviceCategory, [Fhir.CodeableConcept], default: []
        field :serviceType, [Fhir.CodeableReference], default: []
        field :slot, [Fhir.Reference], default: []
        field :specialty, [Fhir.CodeableConcept], default: []
        field :start, :timestamp
        field :status, :string
        field :subject, Fhir.Reference
        field :supportingInformation, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
        field :virtualService, [Fhir.VirtualServiceDetail], default: []
  end
end
