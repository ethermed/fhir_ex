defmodule Fhir.HumanName do
  @moduledoc """
  A name, normally of a human, that can be used for other living entities (e.g. animals but not organizations) that have been assigned names by a human and may need the use of name parts or the need for usage information.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:family, :string)
    field(:given, :string)
    field(:id, :string)
    field(:prefix, :string)
    field(:suffix, :string)
    field(:text, :string)

    field(:use, Ecto.Enum,
      values: [:usual, :official, :temp, :nickname, :anonymous, :old, :maiden]
    )

    embeds_one(:_family, Fhir.Element)
    embeds_many(:_given, Fhir.Element)
    embeds_many(:_prefix, Fhir.Element)
    embeds_many(:_suffix, Fhir.Element)
    embeds_one(:_text, Fhir.Element)
    embeds_one(:_use, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:period, Fhir.Period)
  end

  @type t :: %__MODULE__{
          family: String.t(),
          given: String.t(),
          id: String.t(),
          prefix: String.t(),
          suffix: String.t(),
          text: String.t(),
          use: String.t(),
          _family: Fhir.Element.t(),
          _given: [Fhir.Element.t()],
          _prefix: [Fhir.Element.t()],
          _suffix: [Fhir.Element.t()],
          _text: Fhir.Element.t(),
          _use: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          period: Fhir.Period.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:family, :given, :id, :prefix, :suffix, :text, :use])
    |> cast_embed(:_family, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_given, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_prefix, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_suffix, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_use, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> validate_format(:family, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:text, ~r/^^[\s\S]+$$/)
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
