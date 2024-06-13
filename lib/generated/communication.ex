defmodule Fhir.Generated.Communication do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesUri, [Fhir.Generated.Element], default: []
        field :_language, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_received, Fhir.Generated.Element
        field :_sent, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :about, [Fhir.Generated.Reference], default: []
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :inResponseTo, [Fhir.Generated.Reference], default: []
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :language, :string
        field :medium, [Fhir.Generated.CodeableConcept], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :partOf, [Fhir.Generated.Reference], default: []
        field :payload, [Fhir.Generated.CommunicationPayload], default: []
        field :priority, :string
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :received, :datetime
        field :recipient, [Fhir.Generated.Reference], default: []
        field :resourceType, :string, default: "Communication"
        field :sender, Fhir.Generated.Reference
        field :sent, :datetime
        field :status, :string
        field :statusReason, Fhir.Generated.CodeableConcept
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :topic, Fhir.Generated.CodeableConcept
  end
end
