defmodule Fhir.EvidenceVariableDefinitionByCombination do
  @moduledoc """
  The EvidenceVariable resource describes an element that knowledge (Evidence) is about.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:id, :string)
    field(:threshold, :float)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_threshold, Fhir.Element)
    embeds_many(:characteristic, Fhir.EvidenceVariableCharacteristic)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          id: String.t(),
          threshold: float(),
          _code: Fhir.Element.t(),
          _threshold: Fhir.Element.t(),
          characteristic: [Fhir.EvidenceVariableCharacteristic.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :id, :threshold])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_threshold, with: &Fhir.Element.changeset/2)
    |> cast_embed(:characteristic, with: &Fhir.EvidenceVariableCharacteristic.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
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
