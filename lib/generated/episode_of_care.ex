defmodule Fhir.EpisodeOfCare do
  @moduledoc """
  An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization assumes a level of responsibility for the patient during this time.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "EpisodeOfCare")
    field(:status, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:account, Fhir.Reference)
    embeds_one(:careManager, Fhir.Reference)
    embeds_many(:careTeam, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:diagnosis, Fhir.EpisodeOfCareDiagnosis)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:managingOrganization, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:period, Fhir.Period)
    embeds_many(:reason, Fhir.EpisodeOfCareReason)
    embeds_many(:referralRequest, Fhir.Reference)
    embeds_many(:statusHistory, Fhir.EpisodeOfCareStatusHistory)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          account: [Fhir.Reference.t()],
          careManager: Fhir.Reference.t(),
          careTeam: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          diagnosis: [Fhir.EpisodeOfCareDiagnosis.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          managingOrganization: Fhir.Reference.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          patient: Fhir.Reference.t(),
          period: Fhir.Period.t(),
          reason: [Fhir.EpisodeOfCareReason.t()],
          referralRequest: [Fhir.Reference.t()],
          statusHistory: [Fhir.EpisodeOfCareStatusHistory.t()],
          text: Fhir.Narrative.t(),
          type: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :implicitRules, :language, :resourceType, :status])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:account, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:careManager, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:careTeam, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:diagnosis, with: &Fhir.EpisodeOfCareDiagnosis.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:managingOrganization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:reason, with: &Fhir.EpisodeOfCareReason.changeset/2)
    |> cast_embed(:referralRequest, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:statusHistory, with: &Fhir.EpisodeOfCareStatusHistory.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
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
