defmodule Fhir.Generated.Observation do
  use TypedStruct

  typedstruct do
    field :_effectiveDateTime, Fhir.Generated.Element
        field :_effectiveInstant, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesCanonical, Fhir.Generated.Element
        field :_issued, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_valueBoolean, Fhir.Generated.Element
        field :_valueDateTime, Fhir.Generated.Element
        field :_valueInteger, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :_valueTime, Fhir.Generated.Element
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :bodySite, Fhir.Generated.CodeableConcept
        field :bodyStructure, Fhir.Generated.Reference
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :component, [Fhir.Generated.ObservationComponent], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :dataAbsentReason, Fhir.Generated.CodeableConcept
        field :derivedFrom, [Fhir.Generated.Reference], default: []
        field :device, Fhir.Generated.Reference
        field :effectiveDateTime, :string
        field :effectiveInstant, :string
        field :effectivePeriod, Fhir.Generated.Period
        field :effectiveTiming, Fhir.Generated.Timing
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, [Fhir.Generated.Reference], default: []
        field :hasMember, [Fhir.Generated.Reference], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, :string
        field :instantiatesReference, Fhir.Generated.Reference
        field :interpretation, [Fhir.Generated.CodeableConcept], default: []
        field :issued, :timestamp
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :method, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :partOf, [Fhir.Generated.Reference], default: []
        field :performer, [Fhir.Generated.Reference], default: []
        field :referenceRange, [Fhir.Generated.ObservationReferenceRange], default: []
        field :resourceType, :string, default: "Observation"
        field :specimen, Fhir.Generated.Reference
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :triggeredBy, [Fhir.Generated.ObservationTriggeredBy], default: []
        field :valueAttachment, Fhir.Generated.Attachment
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueDateTime, :string
        field :valueInteger, :float
        field :valuePeriod, Fhir.Generated.Period
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
        field :valueRatio, Fhir.Generated.Ratio
        field :valueReference, Fhir.Generated.Reference
        field :valueSampledData, Fhir.Generated.SampledData
        field :valueString, :string
        field :valueTime, :string
  end
end
