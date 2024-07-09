defmodule Fhir.ParameterDefinition do
  @moduledoc """
  The parameters to the module. This collection specifies both the input and output parameters. Input parameters are provided by the caller as part of the $evaluate operation. Output parameters are included in the GuidanceResponse.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:documentation, :string)
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:name, :string)
    field(:profile, :string)
    field(:type, :string)
    field(:use, :string)
    embeds_one(:_documentation, Fhir.Element)
    embeds_one(:_max, Fhir.Element)
    embeds_one(:_min, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_one(:_use, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          documentation: String.t(),
          id: String.t(),
          max: String.t(),
          min: float(),
          name: String.t(),
          profile: String.t(),
          type: String.t(),
          use: String.t(),
          _documentation: Fhir.Element.t(),
          _max: Fhir.Element.t(),
          _min: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          _use: Fhir.Element.t(),
          extension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:documentation, :id, :max, :min, :name, :profile, :type, :use])
    |> cast_embed(:_documentation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_max, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_min, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_use, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:documentation, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:max, ~r/^^[\s\S]+$$/)
    |> validate_format(:min, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:name, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:profile, ~r/^\S*$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:use, ~r/^[^\s]+( [^\s]+)*$/)
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
