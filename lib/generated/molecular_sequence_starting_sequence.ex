defmodule Fhir.MolecularSequenceStartingSequence do
  @moduledoc """
  Representation of a molecular sequence.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:orientation, :string)
    field(:sequenceString, :string)
    field(:strand, :string)
    field(:windowEnd, :float)
    field(:windowStart, :float)
    embeds_one(:_orientation, Fhir.Element)
    embeds_one(:_sequenceString, Fhir.Element)
    embeds_one(:_strand, Fhir.Element)
    embeds_one(:_windowEnd, Fhir.Element)
    embeds_one(:_windowStart, Fhir.Element)
    embeds_one(:chromosome, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:genomeAssembly, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:sequenceCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:sequenceReference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          orientation: String.t(),
          sequenceString: String.t(),
          strand: String.t(),
          windowEnd: float(),
          windowStart: float(),
          _orientation: Fhir.Element.t(),
          _sequenceString: Fhir.Element.t(),
          _strand: Fhir.Element.t(),
          _windowEnd: Fhir.Element.t(),
          _windowStart: Fhir.Element.t(),
          chromosome: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          genomeAssembly: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          sequenceCodeableConcept: Fhir.CodeableConcept.t(),
          sequenceReference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :orientation, :sequenceString, :strand, :windowEnd, :windowStart])
    |> cast_embed(:_orientation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sequenceString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_strand, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_windowEnd, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_windowStart, with: &Fhir.Element.changeset/2)
    |> cast_embed(:chromosome, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:genomeAssembly, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:sequenceCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:sequenceReference, with: &Fhir.Reference.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:orientation, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:strand, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:windowEnd, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:windowStart, ~r/^[0]|[-+]?[1-9][0-9]*$/)
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
