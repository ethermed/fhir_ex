defmodule Fhir.ServiceRequest do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_asNeededBoolean, Fhir.Element
        field :_authoredOn, Fhir.Element
        field :_doNotPerform, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_instantiatesUri, [Fhir.Element], default: []
        field :_intent, Fhir.Element
        field :_language, Fhir.Element
        field :_occurrenceDateTime, Fhir.Element
        field :_priority, Fhir.Element
        field :_status, Fhir.Element
        field :asNeededBoolean, :boolean
        field :asNeededCodeableConcept, Fhir.CodeableConcept
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Reference], default: []
        field :bodySite, [Fhir.CodeableConcept], default: []
        field :bodyStructure, Fhir.Reference
        field :category, [Fhir.CodeableConcept], default: []
        field :code, Fhir.CodeableReference
        field :contained, [Fhir.ResourceList], default: []
        field :doNotPerform, :boolean
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :focus, [Fhir.Reference], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :insurance, [Fhir.Reference], default: []
        field :intent, :string
        field :language, :string
        field :location, [Fhir.CodeableReference], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Period
        field :occurrenceTiming, Fhir.Timing
        field :orderDetail, [Fhir.ServiceRequestOrderDetail], default: []
        field :patientInstruction, [Fhir.ServiceRequestPatientInstruction], default: []
        field :performer, [Fhir.Reference], default: []
        field :performerType, Fhir.CodeableConcept
        field :priority, :string
        field :quantityQuantity, Fhir.Quantity
        field :quantityRange, Fhir.Range
        field :quantityRatio, Fhir.Ratio
        field :reason, [Fhir.CodeableReference], default: []
        field :relevantHistory, [Fhir.Reference], default: []
        field :replaces, [Fhir.Reference], default: []
        field :requester, Fhir.Reference
        field :requisition, Fhir.Identifier
        field :resourceType, :string, default: "ServiceRequest"
        field :specimen, [Fhir.Reference], default: []
        field :status, :string
        field :subject, Fhir.Reference
        field :supportingInfo, [Fhir.CodeableReference], default: []
        field :text, Fhir.Narrative
  end
end
