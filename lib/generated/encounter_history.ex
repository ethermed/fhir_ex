defmodule Fhir.EncounterHistory do
  @moduledoc """
  A record of significant events/milestones key data throughout the history of an Encounter, often tracked for specific purposes such as billing.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:plannedEndDate, :string)
    field(:plannedStartDate, :string)
    field(:resourceType, :string, default: "EncounterHistory")
    field(:status, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_plannedEndDate, Fhir.Element)
    embeds_one(:_plannedStartDate, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:actualPeriod, Fhir.Period)
    embeds_one(:class, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:length, Fhir.Duration)
    embeds_many(:location, Fhir.EncounterHistoryLocation)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:serviceType, Fhir.CodeableReference)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:subjectStatus, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          plannedEndDate: String.t(),
          plannedStartDate: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _plannedEndDate: Fhir.Element.t(),
          _plannedStartDate: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          actualPeriod: Fhir.Period.t(),
          class: Fhir.CodeableConcept.t(),
          contained: [Fhir.ResourceList.t()],
          encounter: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          length: Fhir.Duration.t(),
          location: [Fhir.EncounterHistoryLocation.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          serviceType: [Fhir.CodeableReference.t()],
          subject: Fhir.Reference.t(),
          subjectStatus: Fhir.CodeableConcept.t(),
          text: Fhir.Narrative.t(),
          type: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :id,
      :implicitRules,
      :language,
      :plannedEndDate,
      :plannedStartDate,
      :resourceType,
      :status
    ])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_plannedEndDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_plannedStartDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:actualPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:class, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:length, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:location, with: &Fhir.EncounterHistoryLocation.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:serviceType, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subjectStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :plannedEndDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(
      :plannedStartDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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
