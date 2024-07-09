defmodule Fhir.ArtifactAssessmentContent do
  @moduledoc """
  This Resource provides one or more comments, classifiers or ratings about a Resource and supports attribution and rights management metadata for the added content.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:freeToShare, :boolean)
    field(:id, :string)
    field(:informationType, :string)
    field(:path, :string)
    field(:summary, :string)
    embeds_one(:_freeToShare, Fhir.Element)
    embeds_one(:_informationType, Fhir.Element)
    embeds_many(:_path, Fhir.Element)
    embeds_one(:_summary, Fhir.Element)
    embeds_one(:author, Fhir.Reference)
    embeds_many(:classifier, Fhir.CodeableConcept)
    embeds_many(:component, Fhir.ArtifactAssessmentContent)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_many(:relatedArtifact, Fhir.RelatedArtifact)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          freeToShare: boolean(),
          id: String.t(),
          informationType: String.t(),
          path: String.t(),
          summary: String.t(),
          _freeToShare: Fhir.Element.t(),
          _informationType: Fhir.Element.t(),
          _path: [Fhir.Element.t()],
          _summary: Fhir.Element.t(),
          author: Fhir.Reference.t(),
          classifier: [Fhir.CodeableConcept.t()],
          component: [Fhir.ArtifactAssessmentContent.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          quantity: Fhir.Quantity.t(),
          relatedArtifact: [Fhir.RelatedArtifact.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:freeToShare, :id, :informationType, :path, :summary])
    |> cast_embed(:_freeToShare, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_informationType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_path, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_summary, with: &Fhir.Element.changeset/2)
    |> cast_embed(:author, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:classifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:component, with: &Fhir.ArtifactAssessmentContent.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:relatedArtifact, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_inclusion(:freeToShare, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:informationType, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:summary, ~r/^^[\s\S]+$$/)
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
