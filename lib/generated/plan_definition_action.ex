defmodule Fhir.PlanDefinitionAction do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_cardinalityBehavior, Fhir.Element
        field :_definitionCanonical, Fhir.Element
        field :_definitionUri, Fhir.Element
        field :_description, Fhir.Element
        field :_goalId, [Fhir.Element], default: []
        field :_groupingBehavior, Fhir.Element
        field :_linkId, Fhir.Element
        field :_precheckBehavior, Fhir.Element
        field :_prefix, Fhir.Element
        field :_priority, Fhir.Element
        field :_requiredBehavior, Fhir.Element
        field :_selectionBehavior, Fhir.Element
        field :_subjectCanonical, Fhir.Element
        field :_textEquivalent, Fhir.Element
        field :_title, Fhir.Element
        field :action, [Fhir.PlanDefinitionAction], default: []
        field :cardinalityBehavior, :string
        field :code, Fhir.CodeableConcept
        field :condition, [Fhir.PlanDefinitionCondition], default: []
        field :definitionCanonical, :string
        field :definitionUri, :string
        field :description, :string
        field :documentation, [Fhir.RelatedArtifact], default: []
        field :dynamicValue, [Fhir.PlanDefinitionDynamicValue], default: []
        field :extension, [Fhir.Extension], default: []
        field :goalId, [:string], default: []
        field :groupingBehavior, :string
        field :id, :string
        field :input, [Fhir.PlanDefinitionInput], default: []
        field :linkId, :string
        field :location, Fhir.CodeableReference
        field :modifierExtension, [Fhir.Extension], default: []
        field :output, [Fhir.PlanDefinitionOutput], default: []
        field :participant, [Fhir.PlanDefinitionParticipant], default: []
        field :precheckBehavior, :string
        field :prefix, :string
        field :priority, :string
        field :reason, [Fhir.CodeableConcept], default: []
        field :relatedAction, [Fhir.PlanDefinitionRelatedAction], default: []
        field :requiredBehavior, :string
        field :selectionBehavior, :string
        field :subjectCanonical, :string
        field :subjectCodeableConcept, Fhir.CodeableConcept
        field :subjectReference, Fhir.Reference
        field :textEquivalent, :string
        field :timingAge, Fhir.Age
        field :timingDuration, Fhir.Duration
        field :timingRange, Fhir.Range
        field :timingTiming, Fhir.Timing
        field :title, :string
        field :transform, :string
        field :trigger, [Fhir.TriggerDefinition], default: []
        field :type, Fhir.CodeableConcept
  end
end
