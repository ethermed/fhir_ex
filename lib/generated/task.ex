defmodule Fhir.Task do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_authoredOn, Fhir.Element
        field :_description, Fhir.Element
        field :_doNotPerform, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_instantiatesUri, Fhir.Element
        field :_intent, Fhir.Element
        field :_language, Fhir.Element
        field :_lastModified, Fhir.Element
        field :_priority, Fhir.Element
        field :_status, Fhir.Element
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Reference], default: []
        field :businessStatus, Fhir.CodeableConcept
        field :code, Fhir.CodeableConcept
        field :contained, [Fhir.ResourceList], default: []
        field :description, :string
        field :doNotPerform, :boolean
        field :encounter, Fhir.Reference
        field :executionPeriod, Fhir.Period
        field :extension, [Fhir.Extension], default: []
        field :focus, Fhir.Reference
        field :for, Fhir.Reference
        field :groupIdentifier, Fhir.Identifier
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :input, [Fhir.TaskInput], default: []
        field :instantiatesCanonical, :string
        field :instantiatesUri, :string
        field :insurance, [Fhir.Reference], default: []
        field :intent, :string
        field :language, :string
        field :lastModified, :datetime
        field :location, Fhir.Reference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :output, [Fhir.TaskOutput], default: []
        field :owner, Fhir.Reference
        field :partOf, [Fhir.Reference], default: []
        field :performer, [Fhir.TaskPerformer], default: []
        field :priority, :string
        field :reason, [Fhir.CodeableReference], default: []
        field :relevantHistory, [Fhir.Reference], default: []
        field :requestedPerformer, [Fhir.CodeableReference], default: []
        field :requestedPeriod, Fhir.Period
        field :requester, Fhir.Reference
        field :resourceType, :string, default: "Task"
        field :restriction, Fhir.TaskRestriction
        field :status, :string
        field :statusReason, Fhir.CodeableReference
        field :text, Fhir.Narrative
  end
end
