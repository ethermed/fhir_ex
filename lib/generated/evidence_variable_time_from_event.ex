defmodule Fhir.EvidenceVariableTimeFromEvent do
  @moduledoc """
  The EvidenceVariable resource describes an element that knowledge (Evidence) is about.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:eventDateTime, :string)
    field(:eventId, :string)
    field(:id, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_eventDateTime, Fhir.Element)
    embeds_one(:_eventId, Fhir.Element)
    embeds_one(:eventCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:eventReference, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_one(:range, Fhir.Range)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          eventDateTime: String.t(),
          eventId: String.t(),
          id: String.t(),
          _description: Fhir.Element.t(),
          _eventDateTime: Fhir.Element.t(),
          _eventId: Fhir.Element.t(),
          eventCodeableConcept: Fhir.CodeableConcept.t(),
          eventReference: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          quantity: Fhir.Quantity.t(),
          range: Fhir.Range.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :eventDateTime, :eventId, :id])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_eventDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_eventId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:eventCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:eventReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:range, with: &Fhir.Range.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
