defmodule Fhir.ElementDefinitionAdditional do
  @moduledoc """
  Captures constraints on each element within the resource, profile, or extension.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:any, :boolean)
    field(:documentation, :string)
    field(:id, :string)
    field(:purpose, :string)
    field(:shortDoco, :string)
    field(:valueSet, :string)
    embeds_one(:_any, Fhir.Element)
    embeds_one(:_documentation, Fhir.Element)
    embeds_one(:_purpose, Fhir.Element)
    embeds_one(:_shortDoco, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:usage, Fhir.UsageContext)
  end

  @type t :: %__MODULE__{
          any: boolean(),
          documentation: String.t(),
          id: String.t(),
          purpose: String.t(),
          shortDoco: String.t(),
          valueSet: String.t(),
          _any: Fhir.Element.t(),
          _documentation: Fhir.Element.t(),
          _purpose: Fhir.Element.t(),
          _shortDoco: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          usage: [Fhir.UsageContext.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:any, :documentation, :id, :purpose, :shortDoco, :valueSet])
    |> cast_embed(:_any, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_documentation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_purpose, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_shortDoco, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:usage, with: &Fhir.UsageContext.changeset/2)
    |> validate_inclusion(:any, [true, false])
    |> validate_format(:documentation, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:purpose, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:shortDoco, ~r/^^[\s\S]+$$/)
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
