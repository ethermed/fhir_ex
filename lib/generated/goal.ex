defmodule Fhir.Goal do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_continuous, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_lifecycleStatus, Fhir.Element
        field :_startDate, Fhir.Element
        field :_statusDate, Fhir.Element
        field :_statusReason, Fhir.Element
        field :achievementStatus, Fhir.CodeableConcept
        field :addresses, [Fhir.Reference], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :continuous, :boolean
        field :description, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :lifecycleStatus, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :outcome, [Fhir.CodeableReference], default: []
        field :priority, Fhir.CodeableConcept
        field :resourceType, :string, default: "Goal"
        field :source, Fhir.Reference
        field :startCodeableConcept, Fhir.CodeableConcept
        field :startDate, :string
        field :statusDate, :date
        field :statusReason, :string
        field :subject, Fhir.Reference
        field :target, [Fhir.GoalTarget], default: []
        field :text, Fhir.Narrative
  end
end
