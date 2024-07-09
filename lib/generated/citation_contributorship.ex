defmodule Fhir.CitationContributorship do
  @moduledoc """
  The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The Citation Resource supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:complete, :boolean)
    field(:id, :string)
    embeds_one(:_complete, Fhir.Element)
    embeds_many(:entry, Fhir.CitationEntry)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:summary, Fhir.CitationSummary1)
  end

  @type t :: %__MODULE__{
          complete: boolean(),
          id: String.t(),
          _complete: Fhir.Element.t(),
          entry: [Fhir.CitationEntry.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          summary: [Fhir.CitationSummary1.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:complete, :id])
    |> cast_embed(:_complete, with: &Fhir.Element.changeset/2)
    |> cast_embed(:entry, with: &Fhir.CitationEntry.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:summary, with: &Fhir.CitationSummary1.changeset/2)
    |> validate_inclusion(:complete, [true, false])
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
