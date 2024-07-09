defmodule Fhir.CitationCitedArtifact do
  @moduledoc """
  The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The Citation Resource supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:dateAccessed, :string)
    field(:id, :string)
    embeds_one(:_dateAccessed, Fhir.Element)
    embeds_many(:abstract, Fhir.CitationAbstract)
    embeds_many(:classification, Fhir.CitationClassification1)
    embeds_one(:contributorship, Fhir.CitationContributorship)
    embeds_many(:currentState, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:part, Fhir.CitationPart)
    embeds_many(:publicationForm, Fhir.CitationPublicationForm)
    embeds_many(:relatedIdentifier, Fhir.Identifier)
    embeds_many(:relatesTo, Fhir.CitationRelatesTo)
    embeds_many(:statusDate, Fhir.CitationStatusDate1)
    embeds_many(:title, Fhir.CitationTitle)
    embeds_one(:version, Fhir.CitationVersion)
    embeds_many(:webLocation, Fhir.CitationWebLocation)
  end

  @type t :: %__MODULE__{
          dateAccessed: String.t(),
          id: String.t(),
          _dateAccessed: Fhir.Element.t(),
          abstract: [Fhir.CitationAbstract.t()],
          classification: [Fhir.CitationClassification1.t()],
          contributorship: Fhir.CitationContributorship.t(),
          currentState: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          part: Fhir.CitationPart.t(),
          publicationForm: [Fhir.CitationPublicationForm.t()],
          relatedIdentifier: [Fhir.Identifier.t()],
          relatesTo: [Fhir.CitationRelatesTo.t()],
          statusDate: [Fhir.CitationStatusDate1.t()],
          title: [Fhir.CitationTitle.t()],
          version: Fhir.CitationVersion.t(),
          webLocation: [Fhir.CitationWebLocation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:dateAccessed, :id])
    |> cast_embed(:_dateAccessed, with: &Fhir.Element.changeset/2)
    |> cast_embed(:abstract, with: &Fhir.CitationAbstract.changeset/2)
    |> cast_embed(:classification, with: &Fhir.CitationClassification1.changeset/2)
    |> cast_embed(:contributorship, with: &Fhir.CitationContributorship.changeset/2)
    |> cast_embed(:currentState, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:part, with: &Fhir.CitationPart.changeset/2)
    |> cast_embed(:publicationForm, with: &Fhir.CitationPublicationForm.changeset/2)
    |> cast_embed(:relatedIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:relatesTo, with: &Fhir.CitationRelatesTo.changeset/2)
    |> cast_embed(:statusDate, with: &Fhir.CitationStatusDate1.changeset/2)
    |> cast_embed(:title, with: &Fhir.CitationTitle.changeset/2)
    |> cast_embed(:version, with: &Fhir.CitationVersion.changeset/2)
    |> cast_embed(:webLocation, with: &Fhir.CitationWebLocation.changeset/2)
    |> validate_format(
      :dateAccessed,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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
