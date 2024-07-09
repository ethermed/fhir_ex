defmodule Fhir.TransportRestriction do
  @moduledoc """
  Record of transport of item.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:repetitions, :float)
    embeds_one(:_repetitions, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:period, Fhir.Period)
    embeds_many(:recipient, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          repetitions: float(),
          _repetitions: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          period: Fhir.Period.t(),
          recipient: [Fhir.Reference.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :repetitions])
    |> cast_embed(:_repetitions, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:recipient, with: &Fhir.Reference.changeset/2)
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
