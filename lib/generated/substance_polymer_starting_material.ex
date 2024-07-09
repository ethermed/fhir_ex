defmodule Fhir.SubstancePolymerStartingMaterial do
  @moduledoc """
  Properties of a substance specific to it being a polymer.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:isDefining, :boolean)
    embeds_one(:_isDefining, Fhir.Element)
    embeds_one(:amount, Fhir.Quantity)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          isDefining: boolean(),
          _isDefining: Fhir.Element.t(),
          amount: Fhir.Quantity.t(),
          category: Fhir.CodeableConcept.t(),
          code: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :isDefining])
    |> cast_embed(:_isDefining, with: &Fhir.Element.changeset/2)
    |> cast_embed(:amount, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:isDefining, [true, false])
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
