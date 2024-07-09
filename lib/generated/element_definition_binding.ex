defmodule Fhir.ElementDefinitionBinding do
  @moduledoc """
  Captures constraints on each element within the resource, profile, or extension.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:strength, Ecto.Enum, values: [:required, :extensible, :preferred, :example])
    field(:valueSet, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_strength, Fhir.Element)
    embeds_many(:additional, Fhir.ElementDefinitionAdditional)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          strength: String.t(),
          valueSet: String.t(),
          _description: Fhir.Element.t(),
          _strength: Fhir.Element.t(),
          additional: [Fhir.ElementDefinitionAdditional.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :strength, :valueSet])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_strength, with: &Fhir.Element.changeset/2)
    |> cast_embed(:additional, with: &Fhir.ElementDefinitionAdditional.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:valueSet, ~r/^\S*$/)
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
