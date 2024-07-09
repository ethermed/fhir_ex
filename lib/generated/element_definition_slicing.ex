defmodule Fhir.ElementDefinitionSlicing do
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
    field(:ordered, :boolean)
    field(:rules, Ecto.Enum, values: [:closed, :open, :openAtEnd])
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_ordered, Fhir.Element)
    embeds_one(:_rules, Fhir.Element)
    embeds_many(:discriminator, Fhir.ElementDefinitionDiscriminator)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          ordered: boolean(),
          rules: String.t(),
          _description: Fhir.Element.t(),
          _ordered: Fhir.Element.t(),
          _rules: Fhir.Element.t(),
          discriminator: [Fhir.ElementDefinitionDiscriminator.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :ordered, :rules])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_ordered, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_rules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:discriminator, with: &Fhir.ElementDefinitionDiscriminator.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:ordered, [true, false])
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
