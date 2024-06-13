defmodule Fhir.Generated.DeviceUsage do
  use TypedStruct

  typedstruct do
    field :_dateAsserted, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_timingDateTime, Fhir.Generated.Element
        field :adherence, Fhir.Generated.DeviceUsageAdherence
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :bodySite, Fhir.Generated.CodeableReference
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :context, Fhir.Generated.Reference
        field :dateAsserted, :datetime
        field :derivedFrom, [Fhir.Generated.Reference], default: []
        field :device, Fhir.Generated.CodeableReference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :informationSource, Fhir.Generated.Reference
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :patient, Fhir.Generated.Reference
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :resourceType, :string, default: "DeviceUsage"
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :timingDateTime, :string
        field :timingPeriod, Fhir.Generated.Period
        field :timingTiming, Fhir.Generated.Timing
        field :usageReason, [Fhir.Generated.CodeableConcept], default: []
        field :usageStatus, Fhir.Generated.CodeableConcept
  end
end
