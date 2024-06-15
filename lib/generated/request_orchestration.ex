defmodule Fhir.RequestOrchestration do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_authoredOn, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_instantiatesCanonical, [Fhir.Element], default: []
        field :_instantiatesUri, [Fhir.Element], default: []
        field :_intent, Fhir.Element
        field :_language, Fhir.Element
        field :_priority, Fhir.Element
        field :_status, Fhir.Element
        field :action, [Fhir.RequestOrchestrationAction], default: []
        field :author, Fhir.Reference
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Reference], default: []
        field :code, Fhir.CodeableConcept
        field :contained, [Fhir.ResourceList], default: []
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :goal, [Fhir.Reference], default: []
        field :groupIdentifier, Fhir.Identifier
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :intent, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :priority, :string
        field :reason, [Fhir.CodeableReference], default: []
        field :replaces, [Fhir.Reference], default: []
        field :resourceType, :string, default: "RequestOrchestration"
        field :status, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
  end
end
