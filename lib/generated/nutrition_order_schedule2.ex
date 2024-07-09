defmodule Fhir.NutritionOrderSchedule2 do
  @moduledoc """
  A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:asNeeded, :boolean)
    field(:id, :string)
    embeds_one(:_asNeeded, Fhir.Element)
    embeds_one(:asNeededFor, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:timing, Fhir.Timing)
  end

  @type t :: %__MODULE__{
          asNeeded: boolean(),
          id: String.t(),
          _asNeeded: Fhir.Element.t(),
          asNeededFor: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          timing: [Fhir.Timing.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:asNeeded, :id])
    |> cast_embed(:_asNeeded, with: &Fhir.Element.changeset/2)
    |> cast_embed(:asNeededFor, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:timing, with: &Fhir.Timing.changeset/2)
    |> validate_inclusion(:asNeeded, [true, false])
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
