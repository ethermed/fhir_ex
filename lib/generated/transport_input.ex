defmodule Fhir.TransportInput do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_valueBase64Binary, Fhir.Element
        field :_valueBoolean, Fhir.Element
        field :_valueCanonical, Fhir.Element
        field :_valueCode, Fhir.Element
        field :_valueDate, Fhir.Element
        field :_valueDateTime, Fhir.Element
        field :_valueDecimal, Fhir.Element
        field :_valueId, Fhir.Element
        field :_valueInstant, Fhir.Element
        field :_valueInteger, Fhir.Element
        field :_valueInteger64, Fhir.Element
        field :_valueMarkdown, Fhir.Element
        field :_valueOid, Fhir.Element
        field :_valuePositiveInt, Fhir.Element
        field :_valueString, Fhir.Element
        field :_valueTime, Fhir.Element
        field :_valueUnsignedInt, Fhir.Element
        field :_valueUri, Fhir.Element
        field :_valueUrl, Fhir.Element
        field :_valueUuid, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :type, Fhir.CodeableConcept
        field :valueAddress, Fhir.Address
        field :valueAge, Fhir.Age
        field :valueAnnotation, Fhir.Annotation
        field :valueAttachment, Fhir.Attachment
        field :valueAvailability, Fhir.Availability
        field :valueBase64Binary, :string
        field :valueBoolean, :boolean
        field :valueCanonical, :string
        field :valueCode, :string
        field :valueCodeableConcept, Fhir.CodeableConcept
        field :valueCodeableReference, Fhir.CodeableReference
        field :valueCoding, Fhir.Coding
        field :valueContactDetail, Fhir.ContactDetail
        field :valueContactPoint, Fhir.ContactPoint
        field :valueCount, Fhir.Count
        field :valueDataRequirement, Fhir.DataRequirement
        field :valueDate, :string
        field :valueDateTime, :string
        field :valueDecimal, :float
        field :valueDistance, Fhir.Distance
        field :valueDosage, Fhir.Dosage
        field :valueDuration, Fhir.Duration
        field :valueExpression, Fhir.Expression
        field :valueExtendedContactDetail, Fhir.ExtendedContactDetail
        field :valueHumanName, Fhir.HumanName
        field :valueId, :string
        field :valueIdentifier, Fhir.Identifier
        field :valueInstant, :string
        field :valueInteger, :float
        field :valueInteger64, :string
        field :valueMarkdown, :string
        field :valueMeta, Fhir.Meta
        field :valueMoney, Fhir.Money
        field :valueOid, :string
        field :valueParameterDefinition, Fhir.ParameterDefinition
        field :valuePeriod, Fhir.Period
        field :valuePositiveInt, :float
        field :valueQuantity, Fhir.Quantity
        field :valueRange, Fhir.Range
        field :valueRatio, Fhir.Ratio
        field :valueRatioRange, Fhir.RatioRange
        field :valueReference, Fhir.Reference
        field :valueRelatedArtifact, Fhir.RelatedArtifact
        field :valueSampledData, Fhir.SampledData
        field :valueSignature, Fhir.Signature
        field :valueString, :string
        field :valueTime, :string
        field :valueTiming, Fhir.Timing
        field :valueTriggerDefinition, Fhir.TriggerDefinition
        field :valueUnsignedInt, :float
        field :valueUri, :string
        field :valueUrl, :string
        field :valueUsageContext, Fhir.UsageContext
        field :valueUuid, :string
  end
end
