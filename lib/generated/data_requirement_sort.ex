defmodule Fhir.DataRequirementSort do
  @moduledoc """
  Describes a required data item for evaluation in terms of the type of data, and optional code or date-based filters of the data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:direction, Ecto.Enum, values: [:ascending, :descending])
    field(:id, :string)
    field(:path, :string)
    embeds_one(:_direction, Fhir.Element)
    embeds_one(:_path, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          direction: String.t(),
          id: String.t(),
          path: String.t(),
          _direction: Fhir.Element.t(),
          _path: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:direction, :id, :path])
    |> cast_embed(:_direction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_path, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:path, ~r/^^[\s\S]+$$/)
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
