defmodule Fhir.QuestionnaireEnableWhen do
  @moduledoc """
  A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:answerBoolean, :boolean)
    field(:answerDate, :string)
    field(:answerDateTime, :string)
    field(:answerDecimal, :float)
    field(:answerInteger, :float)
    field(:answerString, :string)
    field(:answerTime, :string)
    field(:id, :string)
    field(:operator, :string)
    field(:question, :string)
    embeds_one(:_answerBoolean, Fhir.Element)
    embeds_one(:_answerDate, Fhir.Element)
    embeds_one(:_answerDateTime, Fhir.Element)
    embeds_one(:_answerDecimal, Fhir.Element)
    embeds_one(:_answerInteger, Fhir.Element)
    embeds_one(:_answerString, Fhir.Element)
    embeds_one(:_answerTime, Fhir.Element)
    embeds_one(:_operator, Fhir.Element)
    embeds_one(:_question, Fhir.Element)
    embeds_one(:answerCoding, Fhir.Coding)
    embeds_one(:answerQuantity, Fhir.Quantity)
    embeds_one(:answerReference, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          answerBoolean: boolean(),
          answerDate: String.t(),
          answerDateTime: String.t(),
          answerDecimal: float(),
          answerInteger: float(),
          answerString: String.t(),
          answerTime: String.t(),
          id: String.t(),
          operator: String.t(),
          question: String.t(),
          _answerBoolean: Fhir.Element.t(),
          _answerDate: Fhir.Element.t(),
          _answerDateTime: Fhir.Element.t(),
          _answerDecimal: Fhir.Element.t(),
          _answerInteger: Fhir.Element.t(),
          _answerString: Fhir.Element.t(),
          _answerTime: Fhir.Element.t(),
          _operator: Fhir.Element.t(),
          _question: Fhir.Element.t(),
          answerCoding: Fhir.Coding.t(),
          answerQuantity: Fhir.Quantity.t(),
          answerReference: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :answerBoolean,
      :answerDate,
      :answerDateTime,
      :answerDecimal,
      :answerInteger,
      :answerString,
      :answerTime,
      :id,
      :operator,
      :question
    ])
    |> cast_embed(:_answerBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_answerDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_answerDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_answerDecimal, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_answerInteger, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_answerString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_answerTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_operator, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_question, with: &Fhir.Element.changeset/2)
    |> cast_embed(:answerCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:answerQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:answerReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:operator, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:question, ~r/^^[\s\S]+$$/)
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
