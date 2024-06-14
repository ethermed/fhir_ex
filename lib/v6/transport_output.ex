defmodule Fhir.v6().TransportOutput do
  use TypedStruct

  typedstruct do
    field(:_valueBase64Binary, Fhir.v6().Element)
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueCanonical, Fhir.v6().Element)
    field(:_valueCode, Fhir.v6().Element)
    field(:_valueDate, Fhir.v6().Element)
    field(:_valueDateTime, Fhir.v6().Element)
    field(:_valueDecimal, Fhir.v6().Element)
    field(:_valueId, Fhir.v6().Element)
    field(:_valueInstant, Fhir.v6().Element)
    field(:_valueInteger, Fhir.v6().Element)
    field(:_valueInteger64, Fhir.v6().Element)
    field(:_valueMarkdown, Fhir.v6().Element)
    field(:_valueOid, Fhir.v6().Element)
    field(:_valuePositiveInt, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:_valueTime, Fhir.v6().Element)
    field(:_valueUnsignedInt, Fhir.v6().Element)
    field(:_valueUri, Fhir.v6().Element)
    field(:_valueUrl, Fhir.v6().Element)
    field(:_valueUuid, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:valueAddress, Fhir.v6().Address)
    field(:valueAge, Fhir.v6().Age)
    field(:valueAnnotation, Fhir.v6().Annotation)
    field(:valueAttachment, Fhir.v6().Attachment)
    field(:valueAvailability, Fhir.v6().Availability)
    field(:valueBase64Binary, :string)
    field(:valueBoolean, :boolean)
    field(:valueCanonical, :string)
    field(:valueCode, :string)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueCodeableReference, Fhir.v6().CodeableReference)
    field(:valueCoding, Fhir.v6().Coding)
    field(:valueContactDetail, Fhir.v6().ContactDetail)
    field(:valueContactPoint, Fhir.v6().ContactPoint)
    field(:valueCount, Fhir.v6().Count)
    field(:valueDataRequirement, Fhir.v6().DataRequirement)
    field(:valueDate, :string)
    field(:valueDateTime, :string)
    field(:valueDecimal, :float)
    field(:valueDistance, Fhir.v6().Distance)
    field(:valueDosage, Fhir.v6().Dosage)
    field(:valueDuration, Fhir.v6().Duration)
    field(:valueExpression, Fhir.v6().Expression)
    field(:valueExtendedContactDetail, Fhir.v6().ExtendedContactDetail)
    field(:valueHumanName, Fhir.v6().HumanName)
    field(:valueId, :string)
    field(:valueIdentifier, Fhir.v6().Identifier)
    field(:valueInstant, :string)
    field(:valueInteger, :float)
    field(:valueInteger64, :string)
    field(:valueMarkdown, :string)
    field(:valueMeta, Fhir.v6().Meta)
    field(:valueMoney, Fhir.v6().Money)
    field(:valueOid, :string)
    field(:valueParameterDefinition, Fhir.v6().ParameterDefinition)
    field(:valuePeriod, Fhir.v6().Period)
    field(:valuePositiveInt, :float)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueRange, Fhir.v6().Range)
    field(:valueRatio, Fhir.v6().Ratio)
    field(:valueRatioRange, Fhir.v6().RatioRange)
    field(:valueReference, Fhir.v6().Reference)
    field(:valueRelatedArtifact, Fhir.v6().RelatedArtifact)
    field(:valueSampledData, Fhir.v6().SampledData)
    field(:valueSignature, Fhir.v6().Signature)
    field(:valueString, :string)
    field(:valueTime, :string)
    field(:valueTiming, Fhir.v6().Timing)
    field(:valueTriggerDefinition, Fhir.v6().TriggerDefinition)
    field(:valueUnsignedInt, :float)
    field(:valueUri, :string)
    field(:valueUrl, :string)
    field(:valueUsageContext, Fhir.v6().UsageContext)
    field(:valueUuid, :string)
  end
end
