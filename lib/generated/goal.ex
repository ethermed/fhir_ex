defmodule Fhir.Generated.Goal do
  use TypedStruct

  typedstruct do
    field :_continuous, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lifecycleStatus, Fhir.Generated.Element
        field :_startDate, Fhir.Generated.Element
        field :_statusDate, Fhir.Generated.Element
        field :_statusReason, Fhir.Generated.Element
        field :achievementStatus, Fhir.Generated.CodeableConcept
        field :addresses, [Fhir.Generated.Reference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :continuous, :boolean
        field :description, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :lifecycleStatus, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :outcome, [Fhir.Generated.CodeableReference], default: []
        field :priority, Fhir.Generated.CodeableConcept
        field :resourceType, :string, default: "Goal"
        field :source, Fhir.Generated.Reference
        field :startCodeableConcept, Fhir.Generated.CodeableConcept
        field :startDate, :string
        field :statusDate, :date
        field :statusReason, :string
        field :subject, Fhir.Generated.Reference
        field :target, [Fhir.Generated.GoalTarget], default: []
        field :text, Fhir.Generated.Narrative
  end
end
