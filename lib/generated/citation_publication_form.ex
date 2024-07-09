defmodule Fhir.CitationPublicationForm do
  @moduledoc """
  The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The Citation Resource supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:accessionNumber, :string)
    field(:articleDate, :string)
    field(:copyright, :string)
    field(:firstPage, :string)
    field(:id, :string)
    field(:issue, :string)
    field(:lastPage, :string)
    field(:lastRevisionDate, :string)
    field(:pageCount, :string)
    field(:pageString, :string)
    field(:publicationDateSeason, :string)
    field(:publicationDateText, :string)
    field(:volume, :string)
    embeds_one(:_accessionNumber, Fhir.Element)
    embeds_one(:_articleDate, Fhir.Element)
    embeds_one(:_copyright, Fhir.Element)
    embeds_one(:_firstPage, Fhir.Element)
    embeds_one(:_issue, Fhir.Element)
    embeds_one(:_lastPage, Fhir.Element)
    embeds_one(:_lastRevisionDate, Fhir.Element)
    embeds_one(:_pageCount, Fhir.Element)
    embeds_one(:_pageString, Fhir.Element)
    embeds_one(:_publicationDateSeason, Fhir.Element)
    embeds_one(:_publicationDateText, Fhir.Element)
    embeds_one(:_volume, Fhir.Element)
    embeds_one(:citedMedium, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:language, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:publishedIn, Fhir.CitationPublishedIn)
  end

  @type t :: %__MODULE__{
          accessionNumber: String.t(),
          articleDate: String.t(),
          copyright: String.t(),
          firstPage: String.t(),
          id: String.t(),
          issue: String.t(),
          lastPage: String.t(),
          lastRevisionDate: String.t(),
          pageCount: String.t(),
          pageString: String.t(),
          publicationDateSeason: String.t(),
          publicationDateText: String.t(),
          volume: String.t(),
          _accessionNumber: Fhir.Element.t(),
          _articleDate: Fhir.Element.t(),
          _copyright: Fhir.Element.t(),
          _firstPage: Fhir.Element.t(),
          _issue: Fhir.Element.t(),
          _lastPage: Fhir.Element.t(),
          _lastRevisionDate: Fhir.Element.t(),
          _pageCount: Fhir.Element.t(),
          _pageString: Fhir.Element.t(),
          _publicationDateSeason: Fhir.Element.t(),
          _publicationDateText: Fhir.Element.t(),
          _volume: Fhir.Element.t(),
          citedMedium: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          language: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          publishedIn: Fhir.CitationPublishedIn.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :accessionNumber,
      :articleDate,
      :copyright,
      :firstPage,
      :id,
      :issue,
      :lastPage,
      :lastRevisionDate,
      :pageCount,
      :pageString,
      :publicationDateSeason,
      :publicationDateText,
      :volume
    ])
    |> cast_embed(:_accessionNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_articleDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_copyright, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_firstPage, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_issue, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_lastPage, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_lastRevisionDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_pageCount, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_pageString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_publicationDateSeason, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_publicationDateText, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_volume, with: &Fhir.Element.changeset/2)
    |> cast_embed(:citedMedium, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:language, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:publishedIn, with: &Fhir.CitationPublishedIn.changeset/2)
    |> validate_format(:accessionNumber, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :articleDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:copyright, ~r/^^[\s\S]+$$/)
    |> validate_format(:firstPage, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:issue, ~r/^^[\s\S]+$$/)
    |> validate_format(:lastPage, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :lastRevisionDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:pageCount, ~r/^^[\s\S]+$$/)
    |> validate_format(:pageString, ~r/^^[\s\S]+$$/)
    |> validate_format(:publicationDateSeason, ~r/^^[\s\S]+$$/)
    |> validate_format(:publicationDateText, ~r/^^[\s\S]+$$/)
    |> validate_format(:volume, ~r/^^[\s\S]+$$/)
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
