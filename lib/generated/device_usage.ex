defmodule Fhir.DeviceUsage do
  @moduledoc """
  A record of a device being used by a patient where the record is the result of a report from the patient or a clinician.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:dateAsserted, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "DeviceUsage")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:timingDateTime, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:timingPeriod, Fhir.Period)
    embeds_one(:informationSource, Fhir.Reference)
    embeds_one(:_dateAsserted, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:derivedFrom, Fhir.Reference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_one(:timingTiming, Fhir.Timing)
    embeds_many(:usageReason, Fhir.CodeableConcept)
    embeds_one(:adherence, Fhir.DeviceUsageAdherence)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:bodySite, Fhir.CodeableReference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:context, Fhir.Reference)
    embeds_one(:patient, Fhir.Reference)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:device, Fhir.CodeableReference)
    embeds_one(:usageStatus, Fhir.CodeableConcept)
    embeds_one(:_timingDateTime, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          dateAsserted: String.t(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          timingDateTime: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          timingPeriod: Fhir.Period.t(),
          informationSource: Fhir.Reference.t(),
          _dateAsserted: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          reason: [Fhir.CodeableReference.t()],
          _implicitRules: Fhir.Element.t(),
          derivedFrom: [Fhir.Reference.t()],
          basedOn: [Fhir.Reference.t()],
          timingTiming: Fhir.Timing.t(),
          usageReason: [Fhir.CodeableConcept.t()],
          adherence: Fhir.DeviceUsageAdherence.t(),
          text: Fhir.Narrative.t(),
          bodySite: Fhir.CodeableReference.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          context: Fhir.Reference.t(),
          patient: Fhir.Reference.t(),
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          device: Fhir.CodeableReference.t(),
          usageStatus: Fhir.CodeableConcept.t(),
          _timingDateTime: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :dateAsserted,
      :language,
      :resourceType,
      :implicitRules,
      :status,
      :timingDateTime,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:timingPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:informationSource, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_dateAsserted, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:derivedFrom, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:timingTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:usageReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:adherence, with: &Fhir.DeviceUsageAdherence.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:context, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:device, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:usageStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_timingDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :dateAsserted,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
