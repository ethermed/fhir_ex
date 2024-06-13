defmodule Fhir.Generated.Appointment do
  use TypedStruct

  typedstruct do
    field :_cancellationDate, Fhir.Generated.Element
        field :_created, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_end, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_minutesDuration, Fhir.Generated.Element
        field :_occurrenceChanged, Fhir.Generated.Element
        field :_recurrenceId, Fhir.Generated.Element
        field :_start, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :account, [Fhir.Generated.Reference], default: []
        field :appointmentType, Fhir.Generated.CodeableConcept
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :cancellationDate, :datetime
        field :cancellationReason, Fhir.Generated.CodeableConcept
        field :class, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :created, :datetime
        field :description, :string
        field :end, :timestamp
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :minutesDuration, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceChanged, :boolean
        field :originatingAppointment, Fhir.Generated.Reference
        field :participant, [Fhir.Generated.AppointmentParticipant], default: []
        field :patientInstruction, [Fhir.Generated.CodeableReference], default: []
        field :previousAppointment, Fhir.Generated.Reference
        field :priority, Fhir.Generated.CodeableConcept
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :recurrenceId, :float
        field :recurrenceTemplate, [Fhir.Generated.AppointmentRecurrenceTemplate], default: []
        field :replaces, [Fhir.Generated.Reference], default: []
        field :requestedPeriod, [Fhir.Generated.Period], default: []
        field :resourceType, :string, default: "Appointment"
        field :serviceCategory, [Fhir.Generated.CodeableConcept], default: []
        field :serviceType, [Fhir.Generated.CodeableReference], default: []
        field :slot, [Fhir.Generated.Reference], default: []
        field :specialty, [Fhir.Generated.CodeableConcept], default: []
        field :start, :timestamp
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :supportingInformation, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :virtualService, [Fhir.Generated.VirtualServiceDetail], default: []
  end
end
