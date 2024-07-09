defmodule Fhir.ImplementationGuidePage do
  @moduledoc """
  A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:generation, :string)
    field(:id, :string)
    field(:name, :string)
    field(:sourceMarkdown, :string)
    field(:sourceString, :string)
    field(:sourceUrl, :string)
    field(:title, :string)
    embeds_one(:_generation, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_sourceMarkdown, Fhir.Element)
    embeds_one(:_sourceString, Fhir.Element)
    embeds_one(:_sourceUrl, Fhir.Element)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:page, Fhir.ImplementationGuidePage)
  end

  @type t :: %__MODULE__{
          generation: String.t(),
          id: String.t(),
          name: String.t(),
          sourceMarkdown: String.t(),
          sourceString: String.t(),
          sourceUrl: String.t(),
          title: String.t(),
          _generation: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _sourceMarkdown: Fhir.Element.t(),
          _sourceString: Fhir.Element.t(),
          _sourceUrl: Fhir.Element.t(),
          _title: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          page: [Fhir.ImplementationGuidePage.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:generation, :id, :name, :sourceMarkdown, :sourceString, :sourceUrl, :title])
    |> cast_embed(:_generation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sourceMarkdown, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sourceString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sourceUrl, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:page, with: &Fhir.ImplementationGuidePage.changeset/2)
    |> validate_format(:generation, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^\S*$/)
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
