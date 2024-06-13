defmodule Fhir.Generated.RequestOrchestration do
  use TypedStruct

  typedstruct do
    field :_authoredOn, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesCanonical, [Fhir.Generated.Element], default: []
        field :_instantiatesUri, [Fhir.Generated.Element], default: []
        field :_intent, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :action, [Fhir.Generated.RequestOrchestrationAction], default: []
        field :author, Fhir.Generated.Reference
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :goal, [Fhir.Generated.Reference], default: []
        field :groupIdentifier, Fhir.Generated.Identifier
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :intent, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :priority, :string
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :replaces, [Fhir.Generated.Reference], default: []
        field :resourceType, :string, default: "RequestOrchestration"
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
