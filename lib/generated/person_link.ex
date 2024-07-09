defmodule Fhir.PersonLink do
  @moduledoc """
  Demographics and administrative information about a person independent of a specific health-related context.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:assurance, :string)
    field(:id, :string)
    embeds_one(:_assurance, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:target, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          assurance: String.t(),
          id: String.t(),
          _assurance: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          target: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:assurance, :id])
    |> cast_embed(:_assurance, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:target, with: &Fhir.Reference.changeset/2)
    |> validate_format(:assurance, ~r/^[^\s]+( [^\s]+)*$/)
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
