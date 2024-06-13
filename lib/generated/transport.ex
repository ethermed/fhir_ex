defmodule Fhir.Generated.Transport do
  use TypedStruct

  typedstruct do
    field :_authoredOn, Fhir.Generated.Element
        field :_completionTime, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesUri, Fhir.Generated.Element
        field :_intent, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastModified, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :completionTime, :datetime
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :currentLocation, Fhir.Generated.Reference
        field :description, :string
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, Fhir.Generated.Reference
        field :for, Fhir.Generated.Reference
        field :groupIdentifier, Fhir.Generated.Identifier
        field :history, Fhir.Generated.Reference
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :input, [Fhir.Generated.TransportInput], default: []
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
        field :output, [Fhir.Generated.TransportOutput], default: []
        field :owner, Fhir.Generated.Reference
        field :partOf, [Fhir.Generated.Reference], default: []
        field :performerType, [Fhir.Generated.CodeableConcept], default: []
        field :priority, :string
        field :reason, Fhir.Generated.CodeableReference
        field :relevantHistory, [Fhir.Generated.Reference], default: []
        field :requestedLocation, Fhir.Generated.Reference
        field :requester, Fhir.Generated.Reference
        field :resourceType, :string, default: "Transport"
        field :restriction, Fhir.Generated.TransportRestriction
        field :status, :string
        field :statusReason, Fhir.Generated.CodeableConcept
        field :text, Fhir.Generated.Narrative
  end
end
