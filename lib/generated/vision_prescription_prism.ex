defmodule Fhir.VisionPrescriptionPrism do
  @moduledoc """
  An authorization for the provision of glasses and/or contact lenses to a patient.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:amount, :float)
    field(:base, :string)
    field(:id, :string)
    embeds_one(:_amount, Fhir.Element)
    embeds_one(:_base, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          amount: float(),
          base: String.t(),
          id: String.t(),
          _amount: Fhir.Element.t(),
          _base: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:amount, :base, :id])
    |> cast_embed(:_amount, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_base, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:base, ~r/^[^\s]+( [^\s]+)*$/)
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
