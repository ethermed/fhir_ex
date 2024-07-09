defmodule Fhir.QuestionnaireItem do
  @moduledoc """
  A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:answerValueSet, :string)
    field(:enableBehavior, :string)
    field(:repeats, :boolean)
    field(:required, :boolean)
    field(:linkId, :string)
    field(:readOnly, :boolean)
    field(:text, :string)
    field(:maxLength, :float)
    field(:disabledDisplay, :string)
    field(:answerConstraint, :string)
    field(:definition, :string)
    field(:type, :string)
    field(:prefix, :string)
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:_required, Fhir.Element)
    embeds_many(:initial, Fhir.QuestionnaireInitial)
    embeds_many(:answerOption, Fhir.QuestionnaireAnswerOption)
    embeds_one(:_definition, Fhir.Element)
    embeds_many(:item, Fhir.QuestionnaireItem)
    embeds_one(:_maxLength, Fhir.Element)
    embeds_one(:_text, Fhir.Element)
    embeds_many(:code, Fhir.Coding)
    embeds_one(:_prefix, Fhir.Element)
    embeds_one(:_enableBehavior, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_linkId, Fhir.Element)
    embeds_one(:_repeats, Fhir.Element)
    embeds_many(:enableWhen, Fhir.QuestionnaireEnableWhen)
    embeds_one(:_readOnly, Fhir.Element)
    embeds_one(:_disabledDisplay, Fhir.Element)
    embeds_one(:_answerConstraint, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
  end

  @type t :: %__MODULE__{
          answerValueSet: String.t(),
          enableBehavior: String.t(),
          repeats: boolean(),
          required: boolean(),
          linkId: String.t(),
          readOnly: boolean(),
          text: String.t(),
          maxLength: float(),
          disabledDisplay: String.t(),
          answerConstraint: String.t(),
          definition: String.t(),
          type: String.t(),
          prefix: String.t(),
          id: String.t(),
          extension: [Fhir.Extension.t()],
          _required: Fhir.Element.t(),
          initial: [Fhir.QuestionnaireInitial.t()],
          answerOption: [Fhir.QuestionnaireAnswerOption.t()],
          _definition: Fhir.Element.t(),
          item: [Fhir.QuestionnaireItem.t()],
          _maxLength: Fhir.Element.t(),
          _text: Fhir.Element.t(),
          code: [Fhir.Coding.t()],
          _prefix: Fhir.Element.t(),
          _enableBehavior: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          _linkId: Fhir.Element.t(),
          _repeats: Fhir.Element.t(),
          enableWhen: [Fhir.QuestionnaireEnableWhen.t()],
          _readOnly: Fhir.Element.t(),
          _disabledDisplay: Fhir.Element.t(),
          _answerConstraint: Fhir.Element.t(),
          _type: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :answerValueSet,
      :enableBehavior,
      :repeats,
      :required,
      :linkId,
      :readOnly,
      :text,
      :maxLength,
      :disabledDisplay,
      :answerConstraint,
      :definition,
      :type,
      :prefix,
      :id
    ])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_required, with: &Fhir.Element.changeset/2)
    |> cast_embed(:initial, with: &Fhir.QuestionnaireInitial.changeset/2)
    |> cast_embed(:answerOption, with: &Fhir.QuestionnaireAnswerOption.changeset/2)
    |> cast_embed(:_definition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:item, with: &Fhir.QuestionnaireItem.changeset/2)
    |> cast_embed(:_maxLength, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:code, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:_prefix, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_enableBehavior, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_repeats, with: &Fhir.Element.changeset/2)
    |> cast_embed(:enableWhen, with: &Fhir.QuestionnaireEnableWhen.changeset/2)
    |> cast_embed(:_readOnly, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_disabledDisplay, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_answerConstraint, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> validate_format(:answerValueSet, ~r/^\S*$/)
    |> validate_format(:enableBehavior, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:repeats, [true, false])
    |> validate_inclusion(:required, [true, false])
    |> validate_format(:linkId, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:readOnly, [true, false])
    |> validate_format(:text, ~r/^^[\s\S]+$$/)
    |> validate_format(:maxLength, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:disabledDisplay, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:answerConstraint, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:definition, ~r/^\S*$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:prefix, ~r/^^[\s\S]+$$/)
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
