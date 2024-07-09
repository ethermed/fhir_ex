defmodule Fhir.Schedule do
  @moduledoc """
  A container for slots of time that may be available for booking appointments.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:active, :boolean)
    field(:comment, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:name, :string)
    field(:resourceType, :string, default: "Schedule")
    embeds_one(:_active, Fhir.Element)
    embeds_one(:_comment, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:actor, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:planningHorizon, Fhir.Period)
    embeds_many(:serviceCategory, Fhir.CodeableConcept)
    embeds_many(:serviceType, Fhir.CodeableReference)
    embeds_many(:specialty, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          active: boolean(),
          comment: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          name: String.t(),
          resourceType: String.t(),
          _active: Fhir.Element.t(),
          _comment: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          actor: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          planningHorizon: Fhir.Period.t(),
          serviceCategory: [Fhir.CodeableConcept.t()],
          serviceType: [Fhir.CodeableReference.t()],
          specialty: [Fhir.CodeableConcept.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:active, :comment, :id, :implicitRules, :language, :name, :resourceType])
    |> cast_embed(:_active, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_comment, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:actor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:planningHorizon, with: &Fhir.Period.changeset/2)
    |> cast_embed(:serviceCategory, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:serviceType, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:specialty, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_inclusion(:active, [true, false])
    |> validate_format(:comment, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
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
