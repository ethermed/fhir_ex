defmodule Fhir.QuestionnaireAnswerOption do
  @moduledoc """
  A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:initialSelected, :boolean)
    field(:valueDate, :string)
    field(:valueInteger, :float)
    field(:valueString, :string)
    field(:valueTime, :string)
    embeds_one(:_initialSelected, Fhir.Element)
    embeds_one(:_valueDate, Fhir.Element)
    embeds_one(:_valueInteger, Fhir.Element)
    embeds_one(:_valueString, Fhir.Element)
    embeds_one(:_valueTime, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:valueCoding, Fhir.Coding)
    embeds_one(:valueReference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          initialSelected: boolean(),
          valueDate: String.t(),
          valueInteger: float(),
          valueString: String.t(),
          valueTime: String.t(),
          _initialSelected: Fhir.Element.t(),
          _valueDate: Fhir.Element.t(),
          _valueInteger: Fhir.Element.t(),
          _valueString: Fhir.Element.t(),
          _valueTime: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          valueCoding: Fhir.Coding.t(),
          valueReference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :initialSelected, :valueDate, :valueInteger, :valueString, :valueTime])
    |> cast_embed(:_initialSelected, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueInteger, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:valueCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:valueReference, with: &Fhir.Reference.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:initialSelected, [true, false])
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
