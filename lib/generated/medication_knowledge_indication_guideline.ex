defmodule Fhir.MedicationKnowledgeIndicationGuideline do
  @moduledoc """
  Information about a medication that is used to support knowledge.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:dosingGuideline, Fhir.MedicationKnowledgeDosingGuideline)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:indication, Fhir.CodeableReference)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          dosingGuideline: [Fhir.MedicationKnowledgeDosingGuideline.t()],
          extension: [Fhir.Extension.t()],
          indication: [Fhir.CodeableReference.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:dosingGuideline, with: &Fhir.MedicationKnowledgeDosingGuideline.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:indication, with: &Fhir.CodeableReference.changeset/2)
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
