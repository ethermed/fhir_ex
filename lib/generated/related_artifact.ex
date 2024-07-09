defmodule Fhir.RelatedArtifact do
  @moduledoc """
  Related artifacts such as additional documentation, justification, or bibliographic references.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:citation, :string)
    field(:display, :string)
    field(:id, :string)
    field(:label, :string)
    field(:publicationDate, :string)
    field(:publicationStatus, :string)
    field(:resource, :string)

    field(:type, Ecto.Enum,
      values: [
        :documentation,
        :justification,
        :citation,
        :predecessor,
        :successor,
        :"derived-from",
        :"depends-on",
        :"composed-of",
        :"part-of",
        :amends,
        :"amended-with",
        :appends,
        :"appended-with",
        :cites,
        :"cited-by",
        :"comments-on",
        :"comment-in",
        :contains,
        :"contained-in",
        :corrects,
        :"correction-in",
        :replaces,
        :"replaced-with",
        :retracts,
        :"retracted-by",
        :signs,
        :"similar-to",
        :supports,
        :"supported-with",
        :transforms,
        :"transformed-into",
        :"transformed-with",
        :documents,
        :"specification-of",
        :"created-with",
        :"cite-as"
      ]
    )

    embeds_one(:_citation, Fhir.Element)
    embeds_one(:_display, Fhir.Element)
    embeds_one(:_label, Fhir.Element)
    embeds_one(:_publicationDate, Fhir.Element)
    embeds_one(:_publicationStatus, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:classifier, Fhir.CodeableConcept)
    embeds_one(:document, Fhir.Attachment)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:resourceReference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          citation: String.t(),
          display: String.t(),
          id: String.t(),
          label: String.t(),
          publicationDate: String.t(),
          publicationStatus: String.t(),
          resource: String.t(),
          type: String.t(),
          _citation: Fhir.Element.t(),
          _display: Fhir.Element.t(),
          _label: Fhir.Element.t(),
          _publicationDate: Fhir.Element.t(),
          _publicationStatus: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          classifier: [Fhir.CodeableConcept.t()],
          document: Fhir.Attachment.t(),
          extension: [Fhir.Extension.t()],
          resourceReference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :citation,
      :display,
      :id,
      :label,
      :publicationDate,
      :publicationStatus,
      :resource,
      :type
    ])
    |> cast_embed(:_citation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_display, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_label, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_publicationDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_publicationStatus, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:classifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:document, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:resourceReference, with: &Fhir.Reference.changeset/2)
    |> validate_format(:citation, ~r/^^[\s\S]+$$/)
    |> validate_format(:display, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:label, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :publicationDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:publicationStatus, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:resource, ~r/^\S*$/)
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
