defmodule Fhir.Generated.ServiceRequest do
  use TypedStruct

  typedstruct do
    field :_asNeededBoolean, Fhir.Generated.Element
        field :_authoredOn, Fhir.Generated.Element
        field :_doNotPerform, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesUri, [Fhir.Generated.Element], default: []
        field :_intent, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :asNeededBoolean, :boolean
        field :asNeededCodeableConcept, Fhir.Generated.CodeableConcept
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :bodySite, [Fhir.Generated.CodeableConcept], default: []
        field :bodyStructure, Fhir.Generated.Reference
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :code, Fhir.Generated.CodeableReference
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :doNotPerform, :boolean
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, [Fhir.Generated.Reference], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :insurance, [Fhir.Generated.Reference], default: []
        field :intent, :string
        field :language, :string
        field :location, [Fhir.Generated.CodeableReference], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Generated.Period
        field :occurrenceTiming, Fhir.Generated.Timing
        field :orderDetail, [Fhir.Generated.ServiceRequestOrderDetail], default: []
        field :patientInstruction, [Fhir.Generated.ServiceRequestPatientInstruction], default: []
        field :performer, [Fhir.Generated.Reference], default: []
        field :performerType, Fhir.Generated.CodeableConcept
        field :priority, :string
        field :quantityQuantity, Fhir.Generated.Quantity
        field :quantityRange, Fhir.Generated.Range
        field :quantityRatio, Fhir.Generated.Ratio
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :relevantHistory, [Fhir.Generated.Reference], default: []
        field :replaces, [Fhir.Generated.Reference], default: []
        field :requester, Fhir.Generated.Reference
        field :requisition, Fhir.Generated.Identifier
        field :resourceType, :string, default: "ServiceRequest"
        field :specimen, [Fhir.Generated.Reference], default: []
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :supportingInfo, [Fhir.Generated.CodeableReference], default: []
        field :text, Fhir.Generated.Narrative
  end
end
