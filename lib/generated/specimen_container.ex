defmodule Fhir.SpecimenContainer do
  @moduledoc """
  A sample to be used for analysis.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:device, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:location, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:specimenQuantity, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          device: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          location: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()],
          specimenQuantity: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:device, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:specimenQuantity, with: &Fhir.Quantity.changeset/2)
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
