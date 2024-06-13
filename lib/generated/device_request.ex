defmodule Fhir.Generated.DeviceRequest do
  use TypedStruct

  typedstruct do
    field :_asNeeded, Fhir.Generated.Element
        field :_authoredOn, Fhir.Generated.Element
        field :_doNotPerform, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesUri, [Fhir.Generated.Element], default: []
        field :_intent, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_quantity, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :asNeeded, :boolean
        field :asNeededFor, Fhir.Generated.CodeableConcept
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :code, Fhir.Generated.CodeableReference
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :doNotPerform, :boolean
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :groupIdentifier, Fhir.Generated.Identifier
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :insurance, [Fhir.Generated.Reference], default: []
        field :intent, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Generated.Period
        field :occurrenceTiming, Fhir.Generated.Timing
        field :parameter, [Fhir.Generated.DeviceRequestParameter], default: []
        field :performer, Fhir.Generated.CodeableReference
        field :priority, :string
        field :quantity, :float
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :relevantHistory, [Fhir.Generated.Reference], default: []
        field :replaces, [Fhir.Generated.Reference], default: []
        field :requester, Fhir.Generated.Reference
        field :resourceType, :string, default: "DeviceRequest"
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :supportingInfo, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
  end
end
