defmodule Fhir.Generated.RequestOrchestrationAction do
  use TypedStruct

  typedstruct do
    field :_cardinalityBehavior, Fhir.Generated.Element
        field :_definitionCanonical, Fhir.Generated.Element
        field :_definitionUri, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_groupingBehavior, Fhir.Generated.Element
        field :_linkId, Fhir.Generated.Element
        field :_precheckBehavior, Fhir.Generated.Element
        field :_prefix, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_requiredBehavior, Fhir.Generated.Element
        field :_selectionBehavior, Fhir.Generated.Element
        field :_textEquivalent, Fhir.Generated.Element
        field :_timingDateTime, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :action, [Fhir.Generated.RequestOrchestrationAction], default: []
        field :cardinalityBehavior, :string
        field :code, [Fhir.Generated.CodeableConcept], default: []
        field :condition, [Fhir.Generated.RequestOrchestrationCondition], default: []
        field :definitionCanonical, :string
        field :definitionUri, :string
        field :description, :string
        field :documentation, [Fhir.Generated.RelatedArtifact], default: []
        field :dynamicValue, [Fhir.Generated.RequestOrchestrationDynamicValue], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :goal, [Fhir.Generated.Reference], default: []
        field :groupingBehavior, :string
        field :id, :string
        field :input, [Fhir.Generated.RequestOrchestrationInput], default: []
        field :linkId, :string
        field :location, Fhir.Generated.CodeableReference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :output, [Fhir.Generated.RequestOrchestrationOutput], default: []
        field :participant, [Fhir.Generated.RequestOrchestrationParticipant], default: []
        field :precheckBehavior, :string
        field :prefix, :string
        field :priority, :string
        field :relatedAction, [Fhir.Generated.RequestOrchestrationRelatedAction], default: []
        field :requiredBehavior, :string
        field :resource, Fhir.Generated.Reference
        field :selectionBehavior, :string
        field :textEquivalent, :string
        field :timingAge, Fhir.Generated.Age
        field :timingDateTime, :string
        field :timingDuration, Fhir.Generated.Duration
        field :timingPeriod, Fhir.Generated.Period
        field :timingRange, Fhir.Generated.Range
        field :timingTiming, Fhir.Generated.Timing
        field :title, :string
        field :transform, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
