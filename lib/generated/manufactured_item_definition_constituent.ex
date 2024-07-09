defmodule Fhir.ManufacturedItemDefinitionConstituent do
  @moduledoc """
  The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a packaged medicinal product.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:amount, Fhir.Quantity)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:function, Fhir.CodeableConcept)
    embeds_many(:hasIngredient, Fhir.CodeableReference)
    embeds_many(:location, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          amount: [Fhir.Quantity.t()],
          extension: [Fhir.Extension.t()],
          function: [Fhir.CodeableConcept.t()],
          hasIngredient: [Fhir.CodeableReference.t()],
          location: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:amount, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:function, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:hasIngredient, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:location, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
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
