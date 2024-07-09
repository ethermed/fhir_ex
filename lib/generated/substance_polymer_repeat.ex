defmodule Fhir.SubstancePolymerRepeat do
  @moduledoc """
  Properties of a substance specific to it being a polymer.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:averageMolecularFormula, :string)
    field(:id, :string)
    embeds_one(:_averageMolecularFormula, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:repeatUnit, Fhir.SubstancePolymerRepeatUnit)
    embeds_one(:repeatUnitAmountType, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          averageMolecularFormula: String.t(),
          id: String.t(),
          _averageMolecularFormula: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          repeatUnit: [Fhir.SubstancePolymerRepeatUnit.t()],
          repeatUnitAmountType: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:averageMolecularFormula, :id])
    |> cast_embed(:_averageMolecularFormula, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:repeatUnit, with: &Fhir.SubstancePolymerRepeatUnit.changeset/2)
    |> cast_embed(:repeatUnitAmountType, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:averageMolecularFormula, ~r/^^[\s\S]+$$/)
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
