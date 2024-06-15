defmodule Fhir.DeviceUsage do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_dateAsserted, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_status, Fhir.Element
        field :_timingDateTime, Fhir.Element
        field :adherence, Fhir.DeviceUsageAdherence
        field :basedOn, [Fhir.Reference], default: []
        field :bodySite, Fhir.CodeableReference
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :context, Fhir.Reference
        field :dateAsserted, :datetime
        field :derivedFrom, [Fhir.Reference], default: []
        field :device, Fhir.CodeableReference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :informationSource, Fhir.Reference
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :patient, Fhir.Reference
        field :reason, [Fhir.CodeableReference], default: []
        field :resourceType, :string, default: "DeviceUsage"
        field :status, :string
        field :text, Fhir.Narrative
        field :timingDateTime, :string
        field :timingPeriod, Fhir.Period
        field :timingTiming, Fhir.Timing
        field :usageReason, [Fhir.CodeableConcept], default: []
        field :usageStatus, Fhir.CodeableConcept
  end
end
