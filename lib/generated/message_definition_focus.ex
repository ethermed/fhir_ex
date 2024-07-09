defmodule Fhir.MessageDefinitionFocus do
  @moduledoc """
  Defines the characteristics of a message that can be shared between systems, including the type of event that initiates the message, the content to be transmitted and what response(s), if any, are permitted.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:profile, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_max, Fhir.Element)
    embeds_one(:_min, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          id: String.t(),
          max: String.t(),
          min: float(),
          profile: String.t(),
          _code: Fhir.Element.t(),
          _max: Fhir.Element.t(),
          _min: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :id, :max, :min, :profile])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_max, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_min, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:max, ~r/^^[\s\S]+$$/)
    |> validate_format(:min, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:profile, ~r/^\S*$/)
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
