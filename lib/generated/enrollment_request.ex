defmodule Fhir.EnrollmentRequest do
  @moduledoc """
  This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:created, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "EnrollmentRequest")
    field(:status, :string)
    embeds_one(:_created, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:candidate, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:coverage, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:insurer, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:provider, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          created: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _created: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          candidate: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          coverage: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          insurer: Fhir.Reference.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          provider: Fhir.Reference.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:created, :id, :implicitRules, :language, :resourceType, :status])
    |> cast_embed(:_created, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:candidate, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:coverage, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:insurer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:provider, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(
      :created,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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
