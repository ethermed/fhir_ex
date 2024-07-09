defmodule Fhir.Encounter do
  @moduledoc """
  An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient.  Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:plannedEndDate, :string)
    field(:plannedStartDate, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "Encounter")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:subjectStatus, Fhir.CodeableConcept)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:specialCourtesy, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:participant, Fhir.EncounterParticipant)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:serviceType, Fhir.CodeableReference)
    embeds_many(:reason, Fhir.EncounterReason)
    embeds_one(:serviceProvider, Fhir.Reference)
    embeds_one(:length, Fhir.Duration)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:diagnosis, Fhir.EncounterDiagnosis)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:episodeOfCare, Fhir.Reference)
    embeds_one(:_plannedEndDate, Fhir.Element)
    embeds_many(:account, Fhir.Reference)
    embeds_many(:careTeam, Fhir.Reference)
    embeds_many(:location, Fhir.EncounterLocation)
    embeds_many(:virtualService, Fhir.VirtualServiceDetail)
    embeds_one(:subject, Fhir.Reference)
    embeds_many(:dietPreference, Fhir.CodeableConcept)
    embeds_many(:class, Fhir.CodeableConcept)
    embeds_one(:_plannedStartDate, Fhir.Element)
    embeds_one(:admission, Fhir.EncounterAdmission)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:priority, Fhir.CodeableConcept)
    embeds_one(:actualPeriod, Fhir.Period)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:partOf, Fhir.Reference)
    embeds_many(:type, Fhir.CodeableConcept)
    embeds_many(:appointment, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:specialArrangement, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          plannedEndDate: String.t(),
          plannedStartDate: String.t(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          subjectStatus: Fhir.CodeableConcept.t(),
          _status: Fhir.Element.t(),
          specialCourtesy: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          participant: [Fhir.EncounterParticipant.t()],
          contained: [Fhir.ResourceList.t()],
          serviceType: [Fhir.CodeableReference.t()],
          reason: [Fhir.EncounterReason.t()],
          serviceProvider: Fhir.Reference.t(),
          length: Fhir.Duration.t(),
          _implicitRules: Fhir.Element.t(),
          diagnosis: [Fhir.EncounterDiagnosis.t()],
          basedOn: [Fhir.Reference.t()],
          episodeOfCare: [Fhir.Reference.t()],
          _plannedEndDate: Fhir.Element.t(),
          account: [Fhir.Reference.t()],
          careTeam: [Fhir.Reference.t()],
          location: [Fhir.EncounterLocation.t()],
          virtualService: [Fhir.VirtualServiceDetail.t()],
          subject: Fhir.Reference.t(),
          dietPreference: [Fhir.CodeableConcept.t()],
          class: [Fhir.CodeableConcept.t()],
          _plannedStartDate: Fhir.Element.t(),
          admission: Fhir.EncounterAdmission.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          priority: Fhir.CodeableConcept.t(),
          actualPeriod: Fhir.Period.t(),
          identifier: [Fhir.Identifier.t()],
          partOf: Fhir.Reference.t(),
          type: [Fhir.CodeableConcept.t()],
          appointment: [Fhir.Reference.t()],
          _language: Fhir.Element.t(),
          specialArrangement: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :plannedEndDate,
      :plannedStartDate,
      :language,
      :resourceType,
      :implicitRules,
      :status,
      :id
    ])
    |> cast_embed(:subjectStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:specialCourtesy, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:participant, with: &Fhir.EncounterParticipant.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:serviceType, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:reason, with: &Fhir.EncounterReason.changeset/2)
    |> cast_embed(:serviceProvider, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:length, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:diagnosis, with: &Fhir.EncounterDiagnosis.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:episodeOfCare, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_plannedEndDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:account, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:careTeam, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:location, with: &Fhir.EncounterLocation.changeset/2)
    |> cast_embed(:virtualService, with: &Fhir.VirtualServiceDetail.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:dietPreference, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:class, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_plannedStartDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:admission, with: &Fhir.EncounterAdmission.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:priority, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:actualPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:appointment, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:specialArrangement, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(
      :plannedEndDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(
      :plannedStartDate,
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
