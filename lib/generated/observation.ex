defmodule Fhir.Observation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_effectiveDateTime, Fhir.Element
        field :_effectiveInstant, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_instantiatesCanonical, Fhir.Element
        field :_issued, Fhir.Element
        field :_language, Fhir.Element
        field :_status, Fhir.Element
        field :_valueBoolean, Fhir.Element
        field :_valueDateTime, Fhir.Element
        field :_valueInteger, Fhir.Element
        field :_valueString, Fhir.Element
        field :_valueTime, Fhir.Element
        field :basedOn, [Fhir.Reference], default: []
        field :bodySite, Fhir.CodeableConcept
        field :bodyStructure, Fhir.Reference
        field :category, [Fhir.CodeableConcept], default: []
        field :code, Fhir.CodeableConcept
        field :component, [Fhir.ObservationComponent], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :dataAbsentReason, Fhir.CodeableConcept
        field :derivedFrom, [Fhir.Reference], default: []
        field :device, Fhir.Reference
        field :effectiveDateTime, :string
        field :effectiveInstant, :string
        field :effectivePeriod, Fhir.Period
        field :effectiveTiming, Fhir.Timing
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :focus, [Fhir.Reference], default: []
        field :hasMember, [Fhir.Reference], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, :string
        field :instantiatesReference, Fhir.Reference
        field :interpretation, [Fhir.CodeableConcept], default: []
        field :issued, :timestamp
        field :language, :string
        field :meta, Fhir.Meta
        field :method, Fhir.CodeableConcept
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :partOf, [Fhir.Reference], default: []
        field :performer, [Fhir.Reference], default: []
        field :referenceRange, [Fhir.ObservationReferenceRange], default: []
        field :resourceType, :string, default: "Observation"
        field :specimen, Fhir.Reference
        field :status, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
        field :triggeredBy, [Fhir.ObservationTriggeredBy], default: []
        field :valueAttachment, Fhir.Attachment
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.CodeableConcept
        field :valueDateTime, :string
        field :valueInteger, :float
        field :valuePeriod, Fhir.Period
        field :valueQuantity, Fhir.Quantity
        field :valueRange, Fhir.Range
        field :valueRatio, Fhir.Ratio
        field :valueReference, Fhir.Reference
        field :valueSampledData, Fhir.SampledData
        field :valueString, :string
        field :valueTime, :string
  end
end
