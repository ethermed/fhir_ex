defmodule Fhir.MolecularSequenceRelative do
  @moduledoc """
  Representation of a molecular sequence.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:ordinalPosition, :float)
    embeds_one(:_ordinalPosition, Fhir.Element)
    embeds_one(:coordinateSystem, Fhir.CodeableConcept)
    embeds_many(:edit, Fhir.MolecularSequenceEdit)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:sequenceRange, Fhir.Range)
    embeds_one(:startingSequence, Fhir.MolecularSequenceStartingSequence)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          ordinalPosition: float(),
          _ordinalPosition: Fhir.Element.t(),
          coordinateSystem: Fhir.CodeableConcept.t(),
          edit: [Fhir.MolecularSequenceEdit.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          sequenceRange: Fhir.Range.t(),
          startingSequence: Fhir.MolecularSequenceStartingSequence.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :ordinalPosition])
    |> cast_embed(:_ordinalPosition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:coordinateSystem, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:edit, with: &Fhir.MolecularSequenceEdit.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:sequenceRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:startingSequence, with: &Fhir.MolecularSequenceStartingSequence.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:ordinalPosition, ~r/^[0]|[-+]?[1-9][0-9]*$/)
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
