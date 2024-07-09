defmodule Fhir.Annotation do
  @moduledoc """
  A  text note which also  contains information about who made the statement and when.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:authorString, :string)
    field(:id, :string)
    field(:text, :string)
    field(:time, :string)
    embeds_one(:_authorString, Fhir.Element)
    embeds_one(:_text, Fhir.Element)
    embeds_one(:_time, Fhir.Element)
    embeds_one(:authorReference, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          authorString: String.t(),
          id: String.t(),
          text: String.t(),
          time: String.t(),
          _authorString: Fhir.Element.t(),
          _text: Fhir.Element.t(),
          _time: Fhir.Element.t(),
          authorReference: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:authorString, :id, :text, :time])
    |> cast_embed(:_authorString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_time, with: &Fhir.Element.changeset/2)
    |> cast_embed(:authorReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:text, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :time,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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
