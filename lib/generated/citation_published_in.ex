defmodule Fhir.CitationPublishedIn do
  @moduledoc """
  The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The Citation Resource supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:publisherLocation, :string)
    field(:title, :string)
    embeds_one(:_publisherLocation, Fhir.Element)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:publisher, Fhir.Reference)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          publisherLocation: String.t(),
          title: String.t(),
          _publisherLocation: Fhir.Element.t(),
          _title: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          modifierExtension: [Fhir.Extension.t()],
          publisher: Fhir.Reference.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :publisherLocation, :title])
    |> cast_embed(:_publisherLocation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:publisher, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:publisherLocation, ~r/^^[\s\S]+$$/)
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
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
