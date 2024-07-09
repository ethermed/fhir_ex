defmodule Fhir.ElementDefinitionConstraint do
  @moduledoc """
  Captures constraints on each element within the resource, profile, or extension.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:expression, :string)
    field(:human, :string)
    field(:id, :string)
    field(:key, :string)
    field(:requirements, :string)
    field(:severity, Ecto.Enum, values: [:error, :warning])
    field(:source, :string)
    field(:suppress, :boolean)
    embeds_one(:_expression, Fhir.Element)
    embeds_one(:_human, Fhir.Element)
    embeds_one(:_key, Fhir.Element)
    embeds_one(:_requirements, Fhir.Element)
    embeds_one(:_severity, Fhir.Element)
    embeds_one(:_suppress, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          expression: String.t(),
          human: String.t(),
          id: String.t(),
          key: String.t(),
          requirements: String.t(),
          severity: String.t(),
          source: String.t(),
          suppress: boolean(),
          _expression: Fhir.Element.t(),
          _human: Fhir.Element.t(),
          _key: Fhir.Element.t(),
          _requirements: Fhir.Element.t(),
          _severity: Fhir.Element.t(),
          _suppress: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:expression, :human, :id, :key, :requirements, :severity, :source, :suppress])
    |> cast_embed(:_expression, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_human, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_key, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_requirements, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_severity, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_suppress, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:expression, ~r/^^[\s\S]+$$/)
    |> validate_format(:human, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:key, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:requirements, ~r/^^[\s\S]+$$/)
    |> validate_format(:source, ~r/^\S*$/)
    |> validate_inclusion(:suppress, [true, false])
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
