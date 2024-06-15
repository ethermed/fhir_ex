defmodule Fhir.DeviceRequest do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_asNeeded, Fhir.Element
        field :_authoredOn, Fhir.Element
        field :_doNotPerform, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_instantiatesUri, [Fhir.Element], default: []
        field :_intent, Fhir.Element
        field :_language, Fhir.Element
        field :_occurrenceDateTime, Fhir.Element
        field :_priority, Fhir.Element
        field :_quantity, Fhir.Element
        field :_status, Fhir.Element
        field :asNeeded, :boolean
        field :asNeededFor, Fhir.CodeableConcept
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Reference], default: []
        field :code, Fhir.CodeableReference
        field :contained, [Fhir.ResourceList], default: []
        field :doNotPerform, :boolean
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :groupIdentifier, Fhir.Identifier
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :insurance, [Fhir.Reference], default: []
        field :intent, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Period
        field :occurrenceTiming, Fhir.Timing
        field :parameter, [Fhir.DeviceRequestParameter], default: []
        field :performer, Fhir.CodeableReference
        field :priority, :string
        field :quantity, :float
        field :reason, [Fhir.CodeableReference], default: []
        field :relevantHistory, [Fhir.Reference], default: []
        field :replaces, [Fhir.Reference], default: []
        field :requester, Fhir.Reference
        field :resourceType, :string, default: "DeviceRequest"
        field :status, :string
        field :subject, Fhir.Reference
        field :supportingInfo, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
  end
end
