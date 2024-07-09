defmodule Fhir.RequestOrchestrationOutput do
  @moduledoc """
  A set of related requests that can be used to capture intended activities that have inter-dependencies such as "give this medication after that one".
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:relatedData, :string)
    field(:title, :string)
    embeds_one(:_relatedData, Fhir.Element)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:requirement, Fhir.DataRequirement)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          relatedData: String.t(),
          title: String.t(),
          _relatedData: Fhir.Element.t(),
          _title: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          requirement: Fhir.DataRequirement.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :relatedData, :title])
    |> cast_embed(:_relatedData, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:requirement, with: &Fhir.DataRequirement.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:relatedData, ~r/^^[\s\S]+$$/)
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
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
