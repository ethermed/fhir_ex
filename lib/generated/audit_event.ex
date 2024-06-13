defmodule Fhir.Generated.AuditEvent do
  use TypedStruct

  typedstruct do
    field :_action, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_occurredDateTime, Fhir.Generated.Element
        field :_recorded, Fhir.Generated.Element
        field :_severity, Fhir.Generated.Element
        field :action, :string
        field :agent, [Fhir.Generated.AuditEventAgent], default: []
        field :authorization, [Fhir.Generated.CodeableConcept], default: []
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :encounter, Fhir.Generated.Reference
        field :entity, [Fhir.Generated.AuditEventEntity], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :occurredDateTime, :string
        field :occurredPeriod, Fhir.Generated.Period
        field :outcome, Fhir.Generated.AuditEventOutcome
        field :patient, Fhir.Generated.Reference
        field :recorded, :timestamp
        field :resourceType, :string, default: "AuditEvent"
        field :severity, :string
        field :source, Fhir.Generated.AuditEventSource
        field :text, Fhir.Generated.Narrative
  end
end
