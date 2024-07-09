defmodule Fhir.MolecularSequenceEdit do
  @moduledoc """
  Representation of a molecular sequence.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:end, :float)
    field(:id, :string)
    field(:replacedSequence, :string)
    field(:replacementSequence, :string)
    field(:start, :float)
    embeds_one(:_end, Fhir.Element)
    embeds_one(:_replacedSequence, Fhir.Element)
    embeds_one(:_replacementSequence, Fhir.Element)
    embeds_one(:_start, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          end: float(),
          id: String.t(),
          replacedSequence: String.t(),
          replacementSequence: String.t(),
          start: float(),
          _end: Fhir.Element.t(),
          _replacedSequence: Fhir.Element.t(),
          _replacementSequence: Fhir.Element.t(),
          _start: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:end, :id, :replacedSequence, :replacementSequence, :start])
    |> cast_embed(:_end, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_replacedSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_replacementSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_start, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:end, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:replacedSequence, ~r/^^[\s\S]+$$/)
    |> validate_format(:replacementSequence, ~r/^^[\s\S]+$$/)
    |> validate_format(:start, ~r/^[0]|[-+]?[1-9][0-9]*$/)
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
