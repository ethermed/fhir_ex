defmodule Fhir.CodeableReference do
  @moduledoc """
  A reference to a resource (by instance), or instead, a reference to a concept defined in a terminology or ontology (by class).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:concept, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:reference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          concept: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          reference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:concept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:reference, with: &Fhir.Reference.changeset/2)
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
