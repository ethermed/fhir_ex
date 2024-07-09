defmodule Fhir.AdverseEvent do
  @moduledoc """
  An event (i.e. any change to current patient status) that may be related to unintended effects on a patient or research participant. The unintended effects may require additional monitoring, treatment, hospitalization, or may result in death. The AdverseEvent resource also extends to potential or avoided events that could have had such effects. There are two major domains where the AdverseEvent resource is expected to be used. One is in clinical care reported adverse events and the other is in reporting adverse events in clinical  research trial management. Adverse events can be reported by healthcare providers, patients, caregivers or by medical products manufacturers. Given the differences between these two concepts, we recommend consulting the domain specific implementation guides when implementing the AdverseEvent Resource. The implementation guides include specific extensions, value sets and constraints.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:expectedInResearchStudy, :boolean)
    field(:recordedDate, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "AdverseEvent")
    field(:detected, :string)
    field(:actuality, :string)
    field(:implicitRules, :string)
    field(:occurrenceDateTime, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:participant, Fhir.AdverseEventParticipant)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_actuality, Fhir.Element)
    embeds_many(:resultingEffect, Fhir.Reference)
    embeds_many(:suspectEntity, Fhir.AdverseEventSuspectEntity)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:study, Fhir.Reference)
    embeds_one(:_detected, Fhir.Element)
    embeds_many(:preventiveAction, Fhir.AdverseEventPreventiveAction)
    embeds_many(:outcome, Fhir.CodeableConcept)
    embeds_many(:contributingFactor, Fhir.AdverseEventContributingFactor)
    embeds_one(:encounter, Fhir.Reference)
    embeds_one(:occurrencePeriod, Fhir.Period)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:_expectedInResearchStudy, Fhir.Element)
    embeds_one(:occurrenceTiming, Fhir.Timing)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:supportingInfo, Fhir.AdverseEventSupportingInfo)
    embeds_one(:subject, Fhir.Reference)
    embeds_many(:mitigatingAction, Fhir.AdverseEventMitigatingAction)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_recordedDate, Fhir.Element)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:recorder, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:seriousness, Fhir.CodeableConcept)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          expectedInResearchStudy: boolean(),
          recordedDate: String.t(),
          language: String.t(),
          resourceType: String.t(),
          detected: String.t(),
          actuality: String.t(),
          implicitRules: String.t(),
          occurrenceDateTime: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          participant: [Fhir.AdverseEventParticipant.t()],
          contained: [Fhir.ResourceList.t()],
          _actuality: Fhir.Element.t(),
          resultingEffect: [Fhir.Reference.t()],
          suspectEntity: [Fhir.AdverseEventSuspectEntity.t()],
          _implicitRules: Fhir.Element.t(),
          study: [Fhir.Reference.t()],
          _detected: Fhir.Element.t(),
          preventiveAction: [Fhir.AdverseEventPreventiveAction.t()],
          outcome: [Fhir.CodeableConcept.t()],
          contributingFactor: [Fhir.AdverseEventContributingFactor.t()],
          encounter: Fhir.Reference.t(),
          occurrencePeriod: Fhir.Period.t(),
          location: Fhir.Reference.t(),
          _expectedInResearchStudy: Fhir.Element.t(),
          occurrenceTiming: Fhir.Timing.t(),
          code: Fhir.CodeableConcept.t(),
          supportingInfo: [Fhir.AdverseEventSupportingInfo.t()],
          subject: Fhir.Reference.t(),
          mitigatingAction: [Fhir.AdverseEventMitigatingAction.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          _recordedDate: Fhir.Element.t(),
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          category: [Fhir.CodeableConcept.t()],
          recorder: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          seriousness: Fhir.CodeableConcept.t(),
          _occurrenceDateTime: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :expectedInResearchStudy,
      :recordedDate,
      :language,
      :resourceType,
      :detected,
      :actuality,
      :implicitRules,
      :occurrenceDateTime,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:participant, with: &Fhir.AdverseEventParticipant.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_actuality, with: &Fhir.Element.changeset/2)
    |> cast_embed(:resultingEffect, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:suspectEntity, with: &Fhir.AdverseEventSuspectEntity.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:study, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_detected, with: &Fhir.Element.changeset/2)
    |> cast_embed(:preventiveAction, with: &Fhir.AdverseEventPreventiveAction.changeset/2)
    |> cast_embed(:outcome, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contributingFactor, with: &Fhir.AdverseEventContributingFactor.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:occurrencePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_expectedInResearchStudy, with: &Fhir.Element.changeset/2)
    |> cast_embed(:occurrenceTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:supportingInfo, with: &Fhir.AdverseEventSupportingInfo.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:mitigatingAction, with: &Fhir.AdverseEventMitigatingAction.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_recordedDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:recorder, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:seriousness, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_inclusion(:expectedInResearchStudy, [true, false])
    |> validate_format(
      :recordedDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :detected,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:actuality, ~r/^[^\s]+( [^\s]+)*$/)
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
