defmodule Fhir.CompartmentDefinitionResource do
  @moduledoc """
  A compartment definition that defines how resources are accessed on a server.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:documentation, :string)
    field(:endParam, :string)
    field(:id, :string)
    field(:param, :string)
    field(:startParam, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_documentation, Fhir.Element)
    embeds_one(:_endParam, Fhir.Element)
    embeds_many(:_param, Fhir.Element)
    embeds_one(:_startParam, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          documentation: String.t(),
          endParam: String.t(),
          id: String.t(),
          param: String.t(),
          startParam: String.t(),
          _code: Fhir.Element.t(),
          _documentation: Fhir.Element.t(),
          _endParam: Fhir.Element.t(),
          _param: [Fhir.Element.t()],
          _startParam: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :documentation, :endParam, :id, :param, :startParam])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_documentation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_endParam, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_param, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_startParam, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:documentation, ~r/^^[\s\S]+$$/)
    |> validate_format(:endParam, ~r/^\S*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:startParam, ~r/^\S*$/)
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
