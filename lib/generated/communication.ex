defmodule Fhir.Communication do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_instantiatesUri, [Fhir.Element], default: []
        field :_language, Fhir.Element
        field :_priority, Fhir.Element
        field :_received, Fhir.Element
        field :_sent, Fhir.Element
        field :_status, Fhir.Element
        field :about, [Fhir.Reference], default: []
        field :basedOn, [Fhir.Reference], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :inResponseTo, [Fhir.Reference], default: []
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :language, :string
        field :medium, [Fhir.CodeableConcept], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :partOf, [Fhir.Reference], default: []
        field :payload, [Fhir.CommunicationPayload], default: []
        field :priority, :string
        field :reason, [Fhir.CodeableReference], default: []
        field :received, :datetime
        field :recipient, [Fhir.Reference], default: []
        field :resourceType, :string, default: "Communication"
        field :sender, Fhir.Reference
        field :sent, :datetime
        field :status, :string
        field :statusReason, Fhir.CodeableConcept
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
        field :topic, Fhir.CodeableConcept
  end
end
