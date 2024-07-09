defmodule Fhir.Signature do
  @moduledoc """
  A signature along with supporting context. The signature may be a digital signature that is cryptographic in nature, or some other signature acceptable to the domain. This other signature may be as simple as a graphical image representing a hand-written signature, or a signature ceremony Different signature approaches have different utilities.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:data, :string)
    field(:id, :string)
    field(:sigFormat, :string)
    field(:targetFormat, :string)
    field(:when, :string)
    embeds_one(:_data, Fhir.Element)
    embeds_one(:_sigFormat, Fhir.Element)
    embeds_one(:_targetFormat, Fhir.Element)
    embeds_one(:_when, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:onBehalfOf, Fhir.Reference)
    embeds_many(:type, Fhir.Coding)
    embeds_one(:who, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          data: String.t(),
          id: String.t(),
          sigFormat: String.t(),
          targetFormat: String.t(),
          when: String.t(),
          _data: Fhir.Element.t(),
          _sigFormat: Fhir.Element.t(),
          _targetFormat: Fhir.Element.t(),
          _when: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          onBehalfOf: Fhir.Reference.t(),
          type: [Fhir.Coding.t()],
          who: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:data, :id, :sigFormat, :targetFormat, :when])
    |> cast_embed(:_data, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sigFormat, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_targetFormat, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_when, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:onBehalfOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:who, with: &Fhir.Reference.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:sigFormat, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:targetFormat, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :when,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
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
