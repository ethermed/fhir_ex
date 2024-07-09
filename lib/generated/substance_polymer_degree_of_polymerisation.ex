defmodule Fhir.SubstancePolymerDegreeOfPolymerisation do
  @moduledoc """
  Properties of a substance specific to it being a polymer.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:average, :float)
    field(:high, :float)
    field(:id, :string)
    field(:low, :float)
    embeds_one(:_average, Fhir.Element)
    embeds_one(:_high, Fhir.Element)
    embeds_one(:_low, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          average: float(),
          high: float(),
          id: String.t(),
          low: float(),
          _average: Fhir.Element.t(),
          _high: Fhir.Element.t(),
          _low: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:average, :high, :id, :low])
    |> cast_embed(:_average, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_high, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_low, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:average, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:high, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:low, ~r/^[0]|[-+]?[1-9][0-9]*$/)
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
