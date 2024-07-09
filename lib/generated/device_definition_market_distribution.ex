defmodule Fhir.DeviceDefinitionMarketDistribution do
  @moduledoc """
  The characteristics, operational status and capabilities of a medical-related component of a medical device.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:subJurisdiction, :string)
    embeds_one(:_subJurisdiction, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:marketPeriod, Fhir.Period)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          subJurisdiction: String.t(),
          _subJurisdiction: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          marketPeriod: Fhir.Period.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :subJurisdiction])
    |> cast_embed(:_subJurisdiction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:marketPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:subJurisdiction, ~r/^\S*$/)
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
