defmodule Fhir.SubstancePolymerMonomerSet do
  @moduledoc """
  Properties of a substance specific to it being a polymer.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:ratioType, Fhir.CodeableConcept)
    embeds_many(:startingMaterial, Fhir.SubstancePolymerStartingMaterial)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          ratioType: Fhir.CodeableConcept.t(),
          startingMaterial: [Fhir.SubstancePolymerStartingMaterial.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:ratioType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:startingMaterial, with: &Fhir.SubstancePolymerStartingMaterial.changeset/2)
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
