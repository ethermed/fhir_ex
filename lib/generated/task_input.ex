defmodule Fhir.TaskInput do
  @moduledoc """
  A task to be performed.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:valueTime, :string)
    field(:valueInteger64, :string)
    field(:valuePositiveInt, :float)
    field(:valueDateTime, :string)
    field(:valueMarkdown, :string)
    field(:valueDate, :string)
    field(:valueUnsignedInt, :float)
    field(:valueString, :string)
    field(:valueUrl, :string)
    field(:valueUri, :string)
    field(:valueInteger, :float)
    field(:valueCanonical, :string)
    field(:valueInstant, :string)
    field(:valueOid, :string)
    field(:valueCode, :string)
    field(:valueBase64Binary, :string)
    field(:valueDecimal, :float)
    field(:id, :string)
    field(:valueUuid, :string)
    field(:valueBoolean, :boolean)
    field(:valueId, :string)
    embeds_one(:valueQuantity, Fhir.Quantity)
    embeds_one(:_valueInteger64, Fhir.Element)
    embeds_one(:valueExpression, Fhir.Expression)
    embeds_one(:valueCodeableReference, Fhir.CodeableReference)
    embeds_one(:_valueUrl, Fhir.Element)
    embeds_one(:valueAttachment, Fhir.Attachment)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:valueIdentifier, Fhir.Identifier)
    embeds_one(:valueSampledData, Fhir.SampledData)
    embeds_one(:_valueId, Fhir.Element)
    embeds_one(:valueParameterDefinition, Fhir.ParameterDefinition)
    embeds_one(:valueTiming, Fhir.Timing)
    embeds_one(:valueReference, Fhir.Reference)
    embeds_one(:valueContactPoint, Fhir.ContactPoint)
    embeds_one(:_valueDecimal, Fhir.Element)
    embeds_one(:valueAge, Fhir.Age)
    embeds_one(:valueMeta, Fhir.Meta)
    embeds_one(:valueAnnotation, Fhir.Annotation)
    embeds_one(:_valueBase64Binary, Fhir.Element)
    embeds_one(:_valueCanonical, Fhir.Element)
    embeds_one(:valueMoney, Fhir.Money)
    embeds_one(:_valuePositiveInt, Fhir.Element)
    embeds_one(:_valueString, Fhir.Element)
    embeds_one(:_valueDateTime, Fhir.Element)
    embeds_one(:valueExtendedContactDetail, Fhir.ExtendedContactDetail)
    embeds_one(:valueUsageContext, Fhir.UsageContext)
    embeds_one(:_valueMarkdown, Fhir.Element)
    embeds_one(:valueRelatedArtifact, Fhir.RelatedArtifact)
    embeds_one(:valueContactDetail, Fhir.ContactDetail)
    embeds_one(:valueRatio, Fhir.Ratio)
    embeds_one(:valueDistance, Fhir.Distance)
    embeds_one(:valueDuration, Fhir.Duration)
    embeds_one(:_valueUri, Fhir.Element)
    embeds_one(:valueRatioRange, Fhir.RatioRange)
    embeds_one(:_valueInteger, Fhir.Element)
    embeds_one(:valueHumanName, Fhir.HumanName)
    embeds_one(:_valueTime, Fhir.Element)
    embeds_one(:_valueDate, Fhir.Element)
    embeds_one(:_valueInstant, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:valuePeriod, Fhir.Period)
    embeds_one(:valueAvailability, Fhir.Availability)
    embeds_one(:valueRange, Fhir.Range)
    embeds_one(:valueDosage, Fhir.Dosage)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:_valueOid, Fhir.Element)
    embeds_one(:valueAddress, Fhir.Address)
    embeds_one(:valueSignature, Fhir.Signature)
    embeds_one(:_valueCode, Fhir.Element)
    embeds_one(:_valueUnsignedInt, Fhir.Element)
    embeds_one(:valueTriggerDefinition, Fhir.TriggerDefinition)
    embeds_one(:valueDataRequirement, Fhir.DataRequirement)
    embeds_one(:valueCount, Fhir.Count)
    embeds_one(:valueCoding, Fhir.Coding)
    embeds_one(:_valueUuid, Fhir.Element)
    embeds_one(:valueCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:_valueBoolean, Fhir.Element)
  end

  @type t :: %__MODULE__{
          valueTime: String.t(),
          valueInteger64: String.t(),
          valuePositiveInt: float(),
          valueDateTime: String.t(),
          valueMarkdown: String.t(),
          valueDate: String.t(),
          valueUnsignedInt: float(),
          valueString: String.t(),
          valueUrl: String.t(),
          valueUri: String.t(),
          valueInteger: float(),
          valueCanonical: String.t(),
          valueInstant: String.t(),
          valueOid: String.t(),
          valueCode: String.t(),
          valueBase64Binary: String.t(),
          valueDecimal: float(),
          id: String.t(),
          valueUuid: String.t(),
          valueBoolean: boolean(),
          valueId: String.t(),
          valueQuantity: Fhir.Quantity.t(),
          _valueInteger64: Fhir.Element.t(),
          valueExpression: Fhir.Expression.t(),
          valueCodeableReference: Fhir.CodeableReference.t(),
          _valueUrl: Fhir.Element.t(),
          valueAttachment: Fhir.Attachment.t(),
          extension: [Fhir.Extension.t()],
          valueIdentifier: Fhir.Identifier.t(),
          valueSampledData: Fhir.SampledData.t(),
          _valueId: Fhir.Element.t(),
          valueParameterDefinition: Fhir.ParameterDefinition.t(),
          valueTiming: Fhir.Timing.t(),
          valueReference: Fhir.Reference.t(),
          valueContactPoint: Fhir.ContactPoint.t(),
          _valueDecimal: Fhir.Element.t(),
          valueAge: Fhir.Age.t(),
          valueMeta: Fhir.Meta.t(),
          valueAnnotation: Fhir.Annotation.t(),
          _valueBase64Binary: Fhir.Element.t(),
          _valueCanonical: Fhir.Element.t(),
          valueMoney: Fhir.Money.t(),
          _valuePositiveInt: Fhir.Element.t(),
          _valueString: Fhir.Element.t(),
          _valueDateTime: Fhir.Element.t(),
          valueExtendedContactDetail: Fhir.ExtendedContactDetail.t(),
          valueUsageContext: Fhir.UsageContext.t(),
          _valueMarkdown: Fhir.Element.t(),
          valueRelatedArtifact: Fhir.RelatedArtifact.t(),
          valueContactDetail: Fhir.ContactDetail.t(),
          valueRatio: Fhir.Ratio.t(),
          valueDistance: Fhir.Distance.t(),
          valueDuration: Fhir.Duration.t(),
          _valueUri: Fhir.Element.t(),
          valueRatioRange: Fhir.RatioRange.t(),
          _valueInteger: Fhir.Element.t(),
          valueHumanName: Fhir.HumanName.t(),
          _valueTime: Fhir.Element.t(),
          _valueDate: Fhir.Element.t(),
          _valueInstant: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          valuePeriod: Fhir.Period.t(),
          valueAvailability: Fhir.Availability.t(),
          valueRange: Fhir.Range.t(),
          valueDosage: Fhir.Dosage.t(),
          type: Fhir.CodeableConcept.t(),
          _valueOid: Fhir.Element.t(),
          valueAddress: Fhir.Address.t(),
          valueSignature: Fhir.Signature.t(),
          _valueCode: Fhir.Element.t(),
          _valueUnsignedInt: Fhir.Element.t(),
          valueTriggerDefinition: Fhir.TriggerDefinition.t(),
          valueDataRequirement: Fhir.DataRequirement.t(),
          valueCount: Fhir.Count.t(),
          valueCoding: Fhir.Coding.t(),
          _valueUuid: Fhir.Element.t(),
          valueCodeableConcept: Fhir.CodeableConcept.t(),
          _valueBoolean: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :valueTime,
      :valueInteger64,
      :valuePositiveInt,
      :valueDateTime,
      :valueMarkdown,
      :valueDate,
      :valueUnsignedInt,
      :valueString,
      :valueUrl,
      :valueUri,
      :valueInteger,
      :valueCanonical,
      :valueInstant,
      :valueOid,
      :valueCode,
      :valueBase64Binary,
      :valueDecimal,
      :id,
      :valueUuid,
      :valueBoolean,
      :valueId
    ])
    |> cast_embed(:valueQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:_valueInteger64, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueExpression, with: &Fhir.Expression.changeset/2)
    |> cast_embed(:valueCodeableReference, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_valueUrl, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueAttachment, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:valueIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:valueSampledData, with: &Fhir.SampledData.changeset/2)
    |> cast_embed(:_valueId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueParameterDefinition, with: &Fhir.ParameterDefinition.changeset/2)
    |> cast_embed(:valueTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:valueReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:valueContactPoint, with: &Fhir.ContactPoint.changeset/2)
    |> cast_embed(:_valueDecimal, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueAge, with: &Fhir.Age.changeset/2)
    |> cast_embed(:valueMeta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:valueAnnotation, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:_valueBase64Binary, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueMoney, with: &Fhir.Money.changeset/2)
    |> cast_embed(:_valuePositiveInt, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueExtendedContactDetail, with: &Fhir.ExtendedContactDetail.changeset/2)
    |> cast_embed(:valueUsageContext, with: &Fhir.UsageContext.changeset/2)
    |> cast_embed(:_valueMarkdown, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueRelatedArtifact, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:valueContactDetail, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:valueRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:valueDistance, with: &Fhir.Distance.changeset/2)
    |> cast_embed(:valueDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:_valueUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueRatioRange, with: &Fhir.RatioRange.changeset/2)
    |> cast_embed(:_valueInteger, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueHumanName, with: &Fhir.HumanName.changeset/2)
    |> cast_embed(:_valueTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueInstant, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:valuePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:valueAvailability, with: &Fhir.Availability.changeset/2)
    |> cast_embed(:valueRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:valueDosage, with: &Fhir.Dosage.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_valueOid, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueAddress, with: &Fhir.Address.changeset/2)
    |> cast_embed(:valueSignature, with: &Fhir.Signature.changeset/2)
    |> cast_embed(:_valueCode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueUnsignedInt, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueTriggerDefinition, with: &Fhir.TriggerDefinition.changeset/2)
    |> cast_embed(:valueDataRequirement, with: &Fhir.DataRequirement.changeset/2)
    |> cast_embed(:valueCount, with: &Fhir.Count.changeset/2)
    |> cast_embed(:valueCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:_valueUuid, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
  end

  def new(params) do
    %__MODULE__{}
    |> changeset(params)
    |> apply_action(:new)
  end

  def new!(params) do
    case new(params) do
      {:ok, val} -> val
      {:error, cs} -> raise "Invalid #{__ENV__.module}.new!(): #{inspect(cs.errors)}"
    end
  end
end
