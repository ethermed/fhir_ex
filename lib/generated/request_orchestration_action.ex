defmodule Fhir.RequestOrchestrationAction do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_cardinalityBehavior, Fhir.Element
        field :_definitionCanonical, Fhir.Element
        field :_definitionUri, Fhir.Element
        field :_description, Fhir.Element
        field :_groupingBehavior, Fhir.Element
        field :_linkId, Fhir.Element
        field :_precheckBehavior, Fhir.Element
        field :_prefix, Fhir.Element
        field :_priority, Fhir.Element
        field :_requiredBehavior, Fhir.Element
        field :_selectionBehavior, Fhir.Element
        field :_textEquivalent, Fhir.Element
        field :_timingDateTime, Fhir.Element
        field :_title, Fhir.Element
        field :action, [Fhir.RequestOrchestrationAction], default: []
        field :cardinalityBehavior, :string
        field :code, [Fhir.CodeableConcept], default: []
        field :condition, [Fhir.RequestOrchestrationCondition], default: []
        field :definitionCanonical, :string
        field :definitionUri, :string
        field :description, :string
        field :documentation, [Fhir.RelatedArtifact], default: []
        field :dynamicValue, [Fhir.RequestOrchestrationDynamicValue], default: []
        field :extension, [Fhir.Extension], default: []
        field :goal, [Fhir.Reference], default: []
        field :groupingBehavior, :string
        field :id, :string
        field :input, [Fhir.RequestOrchestrationInput], default: []
        field :linkId, :string
        field :location, Fhir.CodeableReference
        field :modifierExtension, [Fhir.Extension], default: []
        field :output, [Fhir.RequestOrchestrationOutput], default: []
        field :participant, [Fhir.RequestOrchestrationParticipant], default: []
        field :precheckBehavior, :string
        field :prefix, :string
        field :priority, :string
        field :relatedAction, [Fhir.RequestOrchestrationRelatedAction], default: []
        field :requiredBehavior, :string
        field :resource, Fhir.Reference
        field :selectionBehavior, :string
        field :textEquivalent, :string
        field :timingAge, Fhir.Age
        field :timingDateTime, :string
        field :timingDuration, Fhir.Duration
        field :timingPeriod, Fhir.Period
        field :timingRange, Fhir.Range
        field :timingTiming, Fhir.Timing
        field :title, :string
        field :transform, :string
        field :type, Fhir.CodeableConcept
  end
end
