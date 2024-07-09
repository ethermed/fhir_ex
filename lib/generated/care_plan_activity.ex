defmodule Fhir.CarePlanActivity do
  @moduledoc """
  Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or community for a period of time, possibly limited to care for a specific condition or set of conditions.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:performedActivity, Fhir.CodeableReference)
    embeds_one(:plannedActivityReference, Fhir.Reference)
    embeds_many(:progress, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          performedActivity: [Fhir.CodeableReference.t()],
          plannedActivityReference: Fhir.Reference.t(),
          progress: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:performedActivity, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:plannedActivityReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:progress, with: &Fhir.Annotation.changeset/2)
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
