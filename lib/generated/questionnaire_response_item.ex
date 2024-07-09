defmodule Fhir.QuestionnaireResponseItem do
  @moduledoc """
  A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets, corresponding to the structure of the grouping of the questionnaire being responded to.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:definition, :string)
    field(:id, :string)
    field(:linkId, :string)
    field(:text, :string)
    embeds_one(:_definition, Fhir.Element)
    embeds_one(:_linkId, Fhir.Element)
    embeds_one(:_text, Fhir.Element)
    embeds_many(:answer, Fhir.QuestionnaireResponseAnswer)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:item, Fhir.QuestionnaireResponseItem)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          definition: String.t(),
          id: String.t(),
          linkId: String.t(),
          text: String.t(),
          _definition: Fhir.Element.t(),
          _linkId: Fhir.Element.t(),
          _text: Fhir.Element.t(),
          answer: [Fhir.QuestionnaireResponseAnswer.t()],
          extension: [Fhir.Extension.t()],
          item: [Fhir.QuestionnaireResponseItem.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:definition, :id, :linkId, :text])
    |> cast_embed(:_definition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:answer, with: &Fhir.QuestionnaireResponseAnswer.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:item, with: &Fhir.QuestionnaireResponseItem.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:definition, ~r/^\S*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:linkId, ~r/^^[\s\S]+$$/)
    |> validate_format(:text, ~r/^^[\s\S]+$$/)
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
