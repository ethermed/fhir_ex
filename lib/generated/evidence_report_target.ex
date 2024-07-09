defmodule Fhir.EvidenceReportTarget do
  @moduledoc """
  The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:display, :string)
    field(:id, :string)
    field(:url, :string)
    embeds_one(:_display, Fhir.Element)
    embeds_one(:_url, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:resource, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          display: String.t(),
          id: String.t(),
          url: String.t(),
          _display: Fhir.Element.t(),
          _url: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          identifier: Fhir.Identifier.t(),
          modifierExtension: [Fhir.Extension.t()],
          resource: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:display, :id, :url])
    |> cast_embed(:_display, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:resource, with: &Fhir.Reference.changeset/2)
    |> validate_format(:display, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
