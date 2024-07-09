defmodule Fhir.VerificationResult do
  @moduledoc """
  Describes validation requirements, source(s), status and dates for one or more elements.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:lastPerformed, :string)
    field(:nextScheduled, :string)
    field(:resourceType, :string, default: "VerificationResult")
    field(:status, :string)
    field(:statusDate, :string)
    field(:targetLocation, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_lastPerformed, Fhir.Element)
    embeds_one(:_nextScheduled, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_statusDate, Fhir.Element)
    embeds_many(:_targetLocation, Fhir.Element)
    embeds_one(:attestation, Fhir.VerificationResultAttestation)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:failureAction, Fhir.CodeableConcept)
    embeds_one(:frequency, Fhir.Timing)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:need, Fhir.CodeableConcept)
    embeds_many(:primarySource, Fhir.VerificationResultPrimarySource)
    embeds_many(:target, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:validationProcess, Fhir.CodeableConcept)
    embeds_one(:validationType, Fhir.CodeableConcept)
    embeds_many(:validator, Fhir.VerificationResultValidator)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          lastPerformed: String.t(),
          nextScheduled: String.t(),
          resourceType: String.t(),
          status: String.t(),
          statusDate: String.t(),
          targetLocation: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _lastPerformed: Fhir.Element.t(),
          _nextScheduled: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          _statusDate: Fhir.Element.t(),
          _targetLocation: [Fhir.Element.t()],
          attestation: Fhir.VerificationResultAttestation.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          failureAction: Fhir.CodeableConcept.t(),
          frequency: Fhir.Timing.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          need: Fhir.CodeableConcept.t(),
          primarySource: [Fhir.VerificationResultPrimarySource.t()],
          target: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          validationProcess: [Fhir.CodeableConcept.t()],
          validationType: Fhir.CodeableConcept.t(),
          validator: [Fhir.VerificationResultValidator.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :id,
      :implicitRules,
      :language,
      :lastPerformed,
      :nextScheduled,
      :resourceType,
      :status,
      :statusDate,
      :targetLocation
    ])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_lastPerformed, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_nextScheduled, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_statusDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_targetLocation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:attestation, with: &Fhir.VerificationResultAttestation.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:failureAction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:frequency, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:need, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:primarySource, with: &Fhir.VerificationResultPrimarySource.changeset/2)
    |> cast_embed(:target, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:validationProcess, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:validationType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:validator, with: &Fhir.VerificationResultValidator.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :lastPerformed,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(
      :nextScheduled,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :statusDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
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
