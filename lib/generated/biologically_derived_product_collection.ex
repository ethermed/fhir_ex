defmodule Fhir.BiologicallyDerivedProductCollection do
  @moduledoc """
  This resource reflects an instance of a biologically derived product. A material substance originating from a biological entity intended to be transplanted or infused
  into another (possibly the same) biological entity.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:collectedDateTime, :string)
    field(:id, :string)
    embeds_one(:_collectedDateTime, Fhir.Element)
    embeds_one(:collectedPeriod, Fhir.Period)
    embeds_one(:collector, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:source, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          collectedDateTime: String.t(),
          id: String.t(),
          _collectedDateTime: Fhir.Element.t(),
          collectedPeriod: Fhir.Period.t(),
          collector: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          source: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:collectedDateTime, :id])
    |> cast_embed(:_collectedDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:collectedPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:collector, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:source, with: &Fhir.Reference.changeset/2)
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
