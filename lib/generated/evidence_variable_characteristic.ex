defmodule Fhir.EvidenceVariableCharacteristic do
  @moduledoc """
  The EvidenceVariable resource describes an element that knowledge (Evidence) is about.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:definitionCanonical, :string)
    field(:definitionId, :string)
    field(:description, :string)
    field(:exclude, :boolean)
    field(:id, :string)
    field(:linkId, :string)
    embeds_one(:_definitionId, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_exclude, Fhir.Element)
    embeds_one(:_linkId, Fhir.Element)
    embeds_one(:definitionByCombination, Fhir.EvidenceVariableDefinitionByCombination)
    embeds_one(:definitionByTypeAndValue, Fhir.EvidenceVariableDefinitionByTypeAndValue)
    embeds_one(:definitionCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:definitionExpression, Fhir.Expression)
    embeds_one(:definitionReference, Fhir.Reference)
    embeds_one(:durationQuantity, Fhir.Quantity)
    embeds_one(:durationRange, Fhir.Range)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:instancesQuantity, Fhir.Quantity)
    embeds_one(:instancesRange, Fhir.Range)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_many(:timeFromEvent, Fhir.EvidenceVariableTimeFromEvent)
  end

  @type t :: %__MODULE__{
          definitionCanonical: String.t(),
          definitionId: String.t(),
          description: String.t(),
          exclude: boolean(),
          id: String.t(),
          linkId: String.t(),
          _definitionId: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _exclude: Fhir.Element.t(),
          _linkId: Fhir.Element.t(),
          definitionByCombination: Fhir.EvidenceVariableDefinitionByCombination.t(),
          definitionByTypeAndValue: Fhir.EvidenceVariableDefinitionByTypeAndValue.t(),
          definitionCodeableConcept: Fhir.CodeableConcept.t(),
          definitionExpression: Fhir.Expression.t(),
          definitionReference: Fhir.Reference.t(),
          durationQuantity: Fhir.Quantity.t(),
          durationRange: Fhir.Range.t(),
          extension: [Fhir.Extension.t()],
          instancesQuantity: Fhir.Quantity.t(),
          instancesRange: Fhir.Range.t(),
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          timeFromEvent: [Fhir.EvidenceVariableTimeFromEvent.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:definitionCanonical, :definitionId, :description, :exclude, :id, :linkId])
    |> cast_embed(:_definitionId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_exclude, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:definitionByCombination,
      with: &Fhir.EvidenceVariableDefinitionByCombination.changeset/2
    )
    |> cast_embed(:definitionByTypeAndValue,
      with: &Fhir.EvidenceVariableDefinitionByTypeAndValue.changeset/2
    )
    |> cast_embed(:definitionCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:definitionExpression, with: &Fhir.Expression.changeset/2)
    |> cast_embed(:definitionReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:durationQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:durationRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:instancesQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:instancesRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:timeFromEvent, with: &Fhir.EvidenceVariableTimeFromEvent.changeset/2)
    |> validate_format(:definitionCanonical, ~r/^\S*$/)
    |> validate_format(:definitionId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:exclude, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:linkId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
