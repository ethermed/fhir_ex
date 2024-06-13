defmodule Fhir.Generated.TransportOutput do
  use TypedStruct

  typedstruct do
    field :_valueBase64Binary, Fhir.Generated.Element
        field :_valueBoolean, Fhir.Generated.Element
        field :_valueCanonical, Fhir.Generated.Element
        field :_valueCode, Fhir.Generated.Element
        field :_valueDate, Fhir.Generated.Element
        field :_valueDateTime, Fhir.Generated.Element
        field :_valueDecimal, Fhir.Generated.Element
        field :_valueId, Fhir.Generated.Element
        field :_valueInstant, Fhir.Generated.Element
        field :_valueInteger, Fhir.Generated.Element
        field :_valueInteger64, Fhir.Generated.Element
        field :_valueMarkdown, Fhir.Generated.Element
        field :_valueOid, Fhir.Generated.Element
        field :_valuePositiveInt, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :_valueTime, Fhir.Generated.Element
        field :_valueUnsignedInt, Fhir.Generated.Element
        field :_valueUri, Fhir.Generated.Element
        field :_valueUrl, Fhir.Generated.Element
        field :_valueUuid, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :valueAddress, Fhir.Generated.Address
        field :valueAge, Fhir.Generated.Age
        field :valueAnnotation, Fhir.Generated.Annotation
        field :valueAttachment, Fhir.Generated.Attachment
        field :valueAvailability, Fhir.Generated.Availability
        field :valueBase64Binary, :string
        field :valueBoolean, :boolean
        field :valueCanonical, :string
        field :valueCode, :string
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueCodeableReference, Fhir.Generated.CodeableReference
        field :valueCoding, Fhir.Generated.Coding
        field :valueContactDetail, Fhir.Generated.ContactDetail
        field :valueContactPoint, Fhir.Generated.ContactPoint
        field :valueCount, Fhir.Generated.Count
        field :valueDataRequirement, Fhir.Generated.DataRequirement
        field :valueDate, :string
        field :valueDateTime, :string
        field :valueDecimal, :float
        field :valueDistance, Fhir.Generated.Distance
        field :valueDosage, Fhir.Generated.Dosage
        field :valueDuration, Fhir.Generated.Duration
        field :valueExpression, Fhir.Generated.Expression
        field :valueExtendedContactDetail, Fhir.Generated.ExtendedContactDetail
        field :valueHumanName, Fhir.Generated.HumanName
        field :valueId, :string
        field :valueIdentifier, Fhir.Generated.Identifier
        field :valueInstant, :string
        field :valueInteger, :float
        field :valueInteger64, :string
        field :valueMarkdown, :string
        field :valueMeta, Fhir.Generated.Meta
        field :valueMoney, Fhir.Generated.Money
        field :valueOid, :string
        field :valueParameterDefinition, Fhir.Generated.ParameterDefinition
        field :valuePeriod, Fhir.Generated.Period
        field :valuePositiveInt, :float
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
        field :valueRatio, Fhir.Generated.Ratio
        field :valueRatioRange, Fhir.Generated.RatioRange
        field :valueReference, Fhir.Generated.Reference
        field :valueRelatedArtifact, Fhir.Generated.RelatedArtifact
        field :valueSampledData, Fhir.Generated.SampledData
        field :valueSignature, Fhir.Generated.Signature
        field :valueString, :string
        field :valueTime, :string
        field :valueTiming, Fhir.Generated.Timing
        field :valueTriggerDefinition, Fhir.Generated.TriggerDefinition
        field :valueUnsignedInt, :float
        field :valueUri, :string
        field :valueUrl, :string
        field :valueUsageContext, Fhir.Generated.UsageContext
        field :valueUuid, :string
  end
end
