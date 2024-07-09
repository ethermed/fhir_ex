defmodule Fhir.List do
  @moduledoc """
  A List is a curated collection of resources, for things such as problem lists, allergy lists, facility list, organization list, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:mode, :string)
    field(:resourceType, :string, default: "List")
    field(:status, :string)
    field(:title, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_mode, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:emptyReason, Fhir.CodeableConcept)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:entry, Fhir.ListEntry)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:orderedBy, Fhir.CodeableConcept)
    embeds_one(:source, Fhir.Reference)
    embeds_many(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          mode: String.t(),
          resourceType: String.t(),
          status: String.t(),
          title: String.t(),
          _date: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _mode: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          _title: Fhir.Element.t(),
          code: Fhir.CodeableConcept.t(),
          contained: [Fhir.ResourceList.t()],
          emptyReason: Fhir.CodeableConcept.t(),
          encounter: Fhir.Reference.t(),
          entry: [Fhir.ListEntry.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          orderedBy: Fhir.CodeableConcept.t(),
          source: Fhir.Reference.t(),
          subject: [Fhir.Reference.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:date, :id, :implicitRules, :language, :mode, :resourceType, :status, :title])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_mode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:emptyReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:entry, with: &Fhir.ListEntry.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:orderedBy, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:source, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:mode, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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
