defmodule Fhir.DataRequirementDateFilter do
  @moduledoc """
  Describes a required data item for evaluation in terms of the type of data, and optional code or date-based filters of the data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:path, :string)
    field(:searchParam, :string)
    field(:valueDateTime, :string)
    embeds_one(:_path, Fhir.Element)
    embeds_one(:_searchParam, Fhir.Element)
    embeds_one(:_valueDateTime, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:valueDuration, Fhir.Duration)
    embeds_one(:valuePeriod, Fhir.Period)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          path: String.t(),
          searchParam: String.t(),
          valueDateTime: String.t(),
          _path: Fhir.Element.t(),
          _searchParam: Fhir.Element.t(),
          _valueDateTime: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          valueDuration: Fhir.Duration.t(),
          valuePeriod: Fhir.Period.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :path, :searchParam, :valueDateTime])
    |> cast_embed(:_path, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_searchParam, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:valueDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:valuePeriod, with: &Fhir.Period.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:path, ~r/^^[\s\S]+$$/)
    |> validate_format(:searchParam, ~r/^^[\s\S]+$$/)
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
