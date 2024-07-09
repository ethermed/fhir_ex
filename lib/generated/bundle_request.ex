defmodule Fhir.BundleRequest do
  @moduledoc """
  A container for a collection of resources.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:ifMatch, :string)
    field(:ifModifiedSince, :string)
    field(:ifNoneExist, :string)
    field(:ifNoneMatch, :string)
    field(:method, :string)
    field(:url, :string)
    embeds_one(:_ifMatch, Fhir.Element)
    embeds_one(:_ifModifiedSince, Fhir.Element)
    embeds_one(:_ifNoneExist, Fhir.Element)
    embeds_one(:_ifNoneMatch, Fhir.Element)
    embeds_one(:_method, Fhir.Element)
    embeds_one(:_url, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          ifMatch: String.t(),
          ifModifiedSince: String.t(),
          ifNoneExist: String.t(),
          ifNoneMatch: String.t(),
          method: String.t(),
          url: String.t(),
          _ifMatch: Fhir.Element.t(),
          _ifModifiedSince: Fhir.Element.t(),
          _ifNoneExist: Fhir.Element.t(),
          _ifNoneMatch: Fhir.Element.t(),
          _method: Fhir.Element.t(),
          _url: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :ifMatch, :ifModifiedSince, :ifNoneExist, :ifNoneMatch, :method, :url])
    |> cast_embed(:_ifMatch, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_ifModifiedSince, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_ifNoneExist, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_ifNoneMatch, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_method, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:ifMatch, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :ifModifiedSince,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
    |> validate_format(:ifNoneExist, ~r/^^[\s\S]+$$/)
    |> validate_format(:ifNoneMatch, ~r/^^[\s\S]+$$/)
    |> validate_format(:method, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:url, ~r/^\S*$/)
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
