defmodule Fhir.CarePlan do
  @moduledoc """
  Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or community for a period of time, possibly limited to care for a specific condition or set of conditions.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:instantiatesUri, :string)
    field(:description, :string)
    field(:intent, :string)
    field(:instantiatesCanonical, :string)
    field(:language, :string)
    field(:created, :string)
    field(:resourceType, :string, default: "CarePlan")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    field(:title, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:custodian, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:_created, Fhir.Element)
    embeds_many(:replaces, Fhir.Reference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:contributor, Fhir.Reference)
    embeds_many(:goal, Fhir.Reference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:activity, Fhir.CarePlanActivity)
    embeds_one(:_intent, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:careTeam, Fhir.Reference)
    embeds_many(:_instantiatesUri, Fhir.Element)
    embeds_many(:addresses, Fhir.CodeableReference)
    embeds_many(:supportingInfo, Fhir.Reference)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:partOf, Fhir.Reference)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:period, Fhir.Period)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          instantiatesUri: String.t(),
          description: String.t(),
          intent: String.t(),
          instantiatesCanonical: String.t(),
          language: String.t(),
          created: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          title: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          custodian: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          _created: Fhir.Element.t(),
          replaces: [Fhir.Reference.t()],
          _implicitRules: Fhir.Element.t(),
          contributor: [Fhir.Reference.t()],
          goal: [Fhir.Reference.t()],
          basedOn: [Fhir.Reference.t()],
          activity: [Fhir.CarePlanActivity.t()],
          _intent: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          encounter: Fhir.Reference.t(),
          careTeam: [Fhir.Reference.t()],
          _instantiatesUri: [Fhir.Element.t()],
          addresses: [Fhir.CodeableReference.t()],
          supportingInfo: [Fhir.Reference.t()],
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          partOf: [Fhir.Reference.t()],
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          period: Fhir.Period.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :instantiatesUri,
      :description,
      :intent,
      :instantiatesCanonical,
      :language,
      :created,
      :resourceType,
      :implicitRules,
      :status,
      :id,
      :title
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:custodian, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_created, with: &Fhir.Element.changeset/2)
    |> cast_embed(:replaces, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contributor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:goal, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:activity, with: &Fhir.CarePlanActivity.changeset/2)
    |> cast_embed(:_intent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:careTeam, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:addresses, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:supportingInfo, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:intent, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :created,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
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
