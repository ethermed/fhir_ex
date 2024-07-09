defmodule Fhir.CoveragePaymentBy do
  @moduledoc """
  Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:responsibility, :string)
    embeds_one(:_responsibility, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:party, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          responsibility: String.t(),
          _responsibility: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          party: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :responsibility])
    |> cast_embed(:_responsibility, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:party, with: &Fhir.Reference.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:responsibility, ~r/^^[\s\S]+$$/)
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
