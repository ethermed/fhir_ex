defmodule Fhir.NutritionOrder do
  @moduledoc """
  A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:instantiatesUri, :string)
    field(:dateTime, :string)
    field(:intent, :string)
    field(:instantiatesCanonical, :string)
    field(:language, :string)
    field(:priority, :string)
    field(:resourceType, :string, default: "NutritionOrder")
    field(:outsideFoodAllowed, :boolean)
    field(:implicitRules, :string)
    field(:instantiates, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:orderer, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:groupIdentifier, Fhir.Identifier)
    embeds_many(:allergyIntolerance, Fhir.Reference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:oralDiet, Fhir.NutritionOrderOralDiet)
    embeds_many(:foodPreferenceModifier, Fhir.CodeableConcept)
    embeds_one(:_dateTime, Fhir.Element)
    embeds_one(:enteralFormula, Fhir.NutritionOrderEnteralFormula)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_one(:_priority, Fhir.Element)
    embeds_many(:supportingInformation, Fhir.Reference)
    embeds_one(:_intent, Fhir.Element)
    embeds_one(:encounter, Fhir.Reference)
    embeds_one(:_outsideFoodAllowed, Fhir.Element)
    embeds_many(:_instantiatesUri, Fhir.Element)
    embeds_many(:performer, Fhir.CodeableReference)
    embeds_one(:subject, Fhir.Reference)
    embeds_many(:supplement, Fhir.NutritionOrderSupplement)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:excludeFoodModifier, Fhir.CodeableConcept)
    embeds_many(:_instantiates, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          instantiatesUri: String.t(),
          dateTime: String.t(),
          intent: String.t(),
          instantiatesCanonical: String.t(),
          language: String.t(),
          priority: String.t(),
          resourceType: String.t(),
          outsideFoodAllowed: boolean(),
          implicitRules: String.t(),
          instantiates: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          orderer: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          groupIdentifier: Fhir.Identifier.t(),
          allergyIntolerance: [Fhir.Reference.t()],
          _implicitRules: Fhir.Element.t(),
          oralDiet: Fhir.NutritionOrderOralDiet.t(),
          foodPreferenceModifier: [Fhir.CodeableConcept.t()],
          _dateTime: Fhir.Element.t(),
          enteralFormula: Fhir.NutritionOrderEnteralFormula.t(),
          basedOn: [Fhir.Reference.t()],
          _priority: Fhir.Element.t(),
          supportingInformation: [Fhir.Reference.t()],
          _intent: Fhir.Element.t(),
          encounter: Fhir.Reference.t(),
          _outsideFoodAllowed: Fhir.Element.t(),
          _instantiatesUri: [Fhir.Element.t()],
          performer: [Fhir.CodeableReference.t()],
          subject: Fhir.Reference.t(),
          supplement: [Fhir.NutritionOrderSupplement.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          excludeFoodModifier: [Fhir.CodeableConcept.t()],
          _instantiates: [Fhir.Element.t()],
          _language: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :instantiatesUri,
      :dateTime,
      :intent,
      :instantiatesCanonical,
      :language,
      :priority,
      :resourceType,
      :outsideFoodAllowed,
      :implicitRules,
      :instantiates,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:orderer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:groupIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:allergyIntolerance, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:oralDiet, with: &Fhir.NutritionOrderOralDiet.changeset/2)
    |> cast_embed(:foodPreferenceModifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_dateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:enteralFormula, with: &Fhir.NutritionOrderEnteralFormula.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_priority, with: &Fhir.Element.changeset/2)
    |> cast_embed(:supportingInformation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_intent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_outsideFoodAllowed, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:performer, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:supplement, with: &Fhir.NutritionOrderSupplement.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:excludeFoodModifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_instantiates, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :dateTime,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:intent, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:priority, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:outsideFoodAllowed, [true, false])
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
