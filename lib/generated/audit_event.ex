defmodule Fhir.AuditEvent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_action, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_occurredDateTime, Fhir.Element
        field :_recorded, Fhir.Element
        field :_severity, Fhir.Element
        field :action, :string
        field :agent, [Fhir.AuditEventAgent], default: []
        field :authorization, [Fhir.CodeableConcept], default: []
        field :basedOn, [Fhir.Reference], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :code, Fhir.CodeableConcept
        field :contained, [Fhir.ResourceList], default: []
        field :encounter, Fhir.Reference
        field :entity, [Fhir.AuditEventEntity], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :occurredDateTime, :string
        field :occurredPeriod, Fhir.Period
        field :outcome, Fhir.AuditEventOutcome
        field :patient, Fhir.Reference
        field :recorded, :timestamp
        field :resourceType, :string, default: "AuditEvent"
        field :severity, :string
        field :source, Fhir.AuditEventSource
        field :text, Fhir.Narrative
  end
end
