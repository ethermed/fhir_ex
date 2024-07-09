defmodule Fhir.Provenance do
  @moduledoc """
  Provenance of a resource is a record that describes entities and processes involved in producing and delivering or otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves become important records with their own provenance. Provenance statement indicates clinical significance in terms of confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document Completion - has the artifact been legally authenticated), all of which may impact security, privacy, and trust policies.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:occurredDateTime, :string)
    field(:policy, :string)
    field(:recorded, :string)
    field(:resourceType, :string, default: "Provenance")
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_occurredDateTime, Fhir.Element)
    embeds_many(:_policy, Fhir.Element)
    embeds_one(:_recorded, Fhir.Element)
    embeds_one(:activity, Fhir.CodeableConcept)
    embeds_many(:agent, Fhir.ProvenanceAgent)
    embeds_many(:authorization, Fhir.CodeableReference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:entity, Fhir.ProvenanceEntity)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:occurredPeriod, Fhir.Period)
    embeds_one(:patient, Fhir.Reference)
    embeds_many(:signature, Fhir.Signature)
    embeds_many(:target, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          occurredDateTime: String.t(),
          policy: String.t(),
          recorded: String.t(),
          resourceType: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _occurredDateTime: Fhir.Element.t(),
          _policy: [Fhir.Element.t()],
          _recorded: Fhir.Element.t(),
          activity: Fhir.CodeableConcept.t(),
          agent: [Fhir.ProvenanceAgent.t()],
          authorization: [Fhir.CodeableReference.t()],
          basedOn: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          encounter: Fhir.Reference.t(),
          entity: [Fhir.ProvenanceEntity.t()],
          extension: [Fhir.Extension.t()],
          location: Fhir.Reference.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          occurredPeriod: Fhir.Period.t(),
          patient: Fhir.Reference.t(),
          signature: [Fhir.Signature.t()],
          target: [Fhir.Reference.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :id,
      :implicitRules,
      :language,
      :occurredDateTime,
      :policy,
      :recorded,
      :resourceType
    ])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_occurredDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_policy, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_recorded, with: &Fhir.Element.changeset/2)
    |> cast_embed(:activity, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:agent, with: &Fhir.ProvenanceAgent.changeset/2)
    |> cast_embed(:authorization, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:entity, with: &Fhir.ProvenanceEntity.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:occurredPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:signature, with: &Fhir.Signature.changeset/2)
    |> cast_embed(:target, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :recorded,
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
