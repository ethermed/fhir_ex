defmodule Fhir.Generated.Task do
  use TypedStruct

  typedstruct do
    field :_authoredOn, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_doNotPerform, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesUri, Fhir.Generated.Element
        field :_intent, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastModified, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :businessStatus, Fhir.Generated.CodeableConcept
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :doNotPerform, :boolean
        field :encounter, Fhir.Generated.Reference
        field :executionPeriod, Fhir.Generated.Period
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, Fhir.Generated.Reference
        field :for, Fhir.Generated.Reference
        field :groupIdentifier, Fhir.Generated.Identifier
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :input, [Fhir.Generated.TaskInput], default: []
        field :instantiatesCanonical, :string
        field :instantiatesUri, :string
        field :insurance, [Fhir.Generated.Reference], default: []
        field :intent, :string
        field :language, :string
        field :lastModified, :datetime
        field :location, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :output, [Fhir.Generated.TaskOutput], default: []
        field :owner, Fhir.Generated.Reference
        field :partOf, [Fhir.Generated.Reference], default: []
        field :performer, [Fhir.Generated.TaskPerformer], default: []
        field :priority, :string
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :relevantHistory, [Fhir.Generated.Reference], default: []
        field :requestedPerformer, [Fhir.Generated.CodeableReference], default: []
        field :requestedPeriod, Fhir.Generated.Period
        field :requester, Fhir.Generated.Reference
        field :resourceType, :string, default: "Task"
        field :restriction, Fhir.Generated.TaskRestriction
        field :status, :string
        field :statusReason, Fhir.Generated.CodeableReference
        field :text, Fhir.Generated.Narrative
  end
end
