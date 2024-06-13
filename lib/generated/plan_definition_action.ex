defmodule Fhir.Generated.PlanDefinitionAction do
  use TypedStruct

  typedstruct do
    field :_cardinalityBehavior, Fhir.Generated.Element
        field :_definitionCanonical, Fhir.Generated.Element
        field :_definitionUri, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_goalId, [Fhir.Generated.Element], default: []
        field :_groupingBehavior, Fhir.Generated.Element
        field :_linkId, Fhir.Generated.Element
        field :_precheckBehavior, Fhir.Generated.Element
        field :_prefix, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_requiredBehavior, Fhir.Generated.Element
        field :_selectionBehavior, Fhir.Generated.Element
        field :_subjectCanonical, Fhir.Generated.Element
        field :_textEquivalent, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :action, [Fhir.Generated.PlanDefinitionAction], default: []
        field :cardinalityBehavior, :string
        field :code, Fhir.Generated.CodeableConcept
        field :condition, [Fhir.Generated.PlanDefinitionCondition], default: []
        field :definitionCanonical, :string
        field :definitionUri, :string
        field :description, :string
        field :documentation, [Fhir.Generated.RelatedArtifact], default: []
        field :dynamicValue, [Fhir.Generated.PlanDefinitionDynamicValue], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :goalId, [:string], default: []
        field :groupingBehavior, :string
        field :id, :string
        field :input, [Fhir.Generated.PlanDefinitionInput], default: []
        field :linkId, :string
        field :location, Fhir.Generated.CodeableReference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :output, [Fhir.Generated.PlanDefinitionOutput], default: []
        field :participant, [Fhir.Generated.PlanDefinitionParticipant], default: []
        field :precheckBehavior, :string
        field :prefix, :string
        field :priority, :string
        field :reason, [Fhir.Generated.CodeableConcept], default: []
        field :relatedAction, [Fhir.Generated.PlanDefinitionRelatedAction], default: []
        field :requiredBehavior, :string
        field :selectionBehavior, :string
        field :subjectCanonical, :string
        field :subjectCodeableConcept, Fhir.Generated.CodeableConcept
        field :subjectReference, Fhir.Generated.Reference
        field :textEquivalent, :string
        field :timingAge, Fhir.Generated.Age
        field :timingDuration, Fhir.Generated.Duration
        field :timingRange, Fhir.Generated.Range
        field :timingTiming, Fhir.Generated.Timing
        field :title, :string
        field :transform, :string
        field :trigger, [Fhir.Generated.TriggerDefinition], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
