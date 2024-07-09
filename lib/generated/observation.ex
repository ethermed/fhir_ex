defmodule Fhir.Observation do
  @moduledoc """
  Measurements and simple assertions made about a patient, device or other subject.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:valueTime, :string)
    field(:effectiveDateTime, :string)
    field(:valueDateTime, :string)
    field(:effectiveInstant, :string)
    field(:instantiatesCanonical, :string)
    field(:valueString, :string)
    field(:language, :string)
    field(:valueInteger, :float)
    field(:resourceType, :string, default: "Observation")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    field(:issued, :string)
    field(:valueBoolean, :boolean)
    embeds_one(:valueQuantity, Fhir.Quantity)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_effectiveInstant, Fhir.Element)
    embeds_one(:valueAttachment, Fhir.Attachment)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:effectiveTiming, Fhir.Timing)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:valueSampledData, Fhir.SampledData)
    embeds_many(:referenceRange, Fhir.ObservationReferenceRange)
    embeds_one(:valueReference, Fhir.Reference)
    embeds_one(:specimen, Fhir.Reference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:derivedFrom, Fhir.Reference)
    embeds_many(:focus, Fhir.Reference)
    embeds_one(:_valueString, Fhir.Element)
    embeds_one(:_valueDateTime, Fhir.Element)
    embeds_one(:effectivePeriod, Fhir.Period)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_one(:valueRatio, Fhir.Ratio)
    embeds_many(:component, Fhir.ObservationComponent)
    embeds_one(:bodyStructure, Fhir.Reference)
    embeds_one(:_instantiatesCanonical, Fhir.Element)
    embeds_one(:instantiatesReference, Fhir.Reference)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:performer, Fhir.Reference)
    embeds_many(:triggeredBy, Fhir.ObservationTriggeredBy)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:dataAbsentReason, Fhir.CodeableConcept)
    embeds_one(:_valueInteger, Fhir.Element)
    embeds_one(:_valueTime, Fhir.Element)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:bodySite, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:valuePeriod, Fhir.Period)
    embeds_one(:_issued, Fhir.Element)
    embeds_one(:valueRange, Fhir.Range)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:partOf, Fhir.Reference)
    embeds_many(:hasMember, Fhir.Reference)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:method, Fhir.CodeableConcept)
    embeds_one(:device, Fhir.Reference)
    embeds_one(:_effectiveDateTime, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
    embeds_many(:interpretation, Fhir.CodeableConcept)
    embeds_one(:valueCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:_valueBoolean, Fhir.Element)
  end

  @type t :: %__MODULE__{
          valueTime: String.t(),
          effectiveDateTime: String.t(),
          valueDateTime: String.t(),
          effectiveInstant: String.t(),
          instantiatesCanonical: String.t(),
          valueString: String.t(),
          language: String.t(),
          valueInteger: float(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          issued: String.t(),
          valueBoolean: boolean(),
          valueQuantity: Fhir.Quantity.t(),
          _status: Fhir.Element.t(),
          _effectiveInstant: Fhir.Element.t(),
          valueAttachment: Fhir.Attachment.t(),
          extension: [Fhir.Extension.t()],
          effectiveTiming: Fhir.Timing.t(),
          contained: [Fhir.ResourceList.t()],
          valueSampledData: Fhir.SampledData.t(),
          referenceRange: [Fhir.ObservationReferenceRange.t()],
          valueReference: Fhir.Reference.t(),
          specimen: Fhir.Reference.t(),
          _implicitRules: Fhir.Element.t(),
          derivedFrom: [Fhir.Reference.t()],
          focus: [Fhir.Reference.t()],
          _valueString: Fhir.Element.t(),
          _valueDateTime: Fhir.Element.t(),
          effectivePeriod: Fhir.Period.t(),
          basedOn: [Fhir.Reference.t()],
          valueRatio: Fhir.Ratio.t(),
          component: [Fhir.ObservationComponent.t()],
          bodyStructure: Fhir.Reference.t(),
          _instantiatesCanonical: Fhir.Element.t(),
          instantiatesReference: Fhir.Reference.t(),
          encounter: Fhir.Reference.t(),
          performer: [Fhir.Reference.t()],
          triggeredBy: [Fhir.ObservationTriggeredBy.t()],
          code: Fhir.CodeableConcept.t(),
          subject: Fhir.Reference.t(),
          dataAbsentReason: Fhir.CodeableConcept.t(),
          _valueInteger: Fhir.Element.t(),
          _valueTime: Fhir.Element.t(),
          text: Fhir.Narrative.t(),
          bodySite: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          valuePeriod: Fhir.Period.t(),
          _issued: Fhir.Element.t(),
          valueRange: Fhir.Range.t(),
          identifier: [Fhir.Identifier.t()],
          partOf: [Fhir.Reference.t()],
          hasMember: [Fhir.Reference.t()],
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          method: Fhir.CodeableConcept.t(),
          device: Fhir.Reference.t(),
          _effectiveDateTime: Fhir.Element.t(),
          note: [Fhir.Annotation.t()],
          interpretation: [Fhir.CodeableConcept.t()],
          valueCodeableConcept: Fhir.CodeableConcept.t(),
          _valueBoolean: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :valueTime,
      :effectiveDateTime,
      :valueDateTime,
      :effectiveInstant,
      :instantiatesCanonical,
      :valueString,
      :language,
      :valueInteger,
      :resourceType,
      :implicitRules,
      :status,
      :id,
      :issued,
      :valueBoolean
    ])
    |> cast_embed(:valueQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_effectiveInstant, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueAttachment, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:effectiveTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:valueSampledData, with: &Fhir.SampledData.changeset/2)
    |> cast_embed(:referenceRange, with: &Fhir.ObservationReferenceRange.changeset/2)
    |> cast_embed(:valueReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:specimen, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:derivedFrom, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:focus, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_valueString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:effectivePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:valueRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:component, with: &Fhir.ObservationComponent.changeset/2)
    |> cast_embed(:bodyStructure, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_instantiatesCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:instantiatesReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:performer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:triggeredBy, with: &Fhir.ObservationTriggeredBy.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:dataAbsentReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_valueInteger, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:valuePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_issued, with: &Fhir.Element.changeset/2)
    |> cast_embed(:valueRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:hasMember, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:method, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:device, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_effectiveDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:interpretation, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valueCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(
      :issued,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
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
