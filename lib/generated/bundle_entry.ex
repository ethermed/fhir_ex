defmodule Fhir.BundleEntry do
  @moduledoc """
  A container for a collection of resources.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:fullUrl, :string)
    field(:id, :string)
    embeds_one(:_fullUrl, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:link, Fhir.BundleLink)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:request, Fhir.BundleRequest)
    embeds_one(:resource, Fhir.ResourceList)
    embeds_one(:response, Fhir.BundleResponse)
    embeds_one(:search, Fhir.BundleSearch)
  end

  @type t :: %__MODULE__{
          fullUrl: String.t(),
          id: String.t(),
          _fullUrl: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          link: [Fhir.BundleLink.t()],
          modifierExtension: [Fhir.Extension.t()],
          request: Fhir.BundleRequest.t(),
          resource: Fhir.ResourceList.t(),
          response: Fhir.BundleResponse.t(),
          search: Fhir.BundleSearch.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:fullUrl, :id])
    |> cast_embed(:_fullUrl, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:link, with: &Fhir.BundleLink.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:request, with: &Fhir.BundleRequest.changeset/2)
    |> cast_embed(:resource, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:response, with: &Fhir.BundleResponse.changeset/2)
    |> cast_embed(:search, with: &Fhir.BundleSearch.changeset/2)
    |> validate_format(:fullUrl, ~r/^\S*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
