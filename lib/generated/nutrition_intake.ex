defmodule Fhir.NutritionIntake do
  @moduledoc """
  A record of food or fluid that is being consumed by a patient.   A NutritionIntake may indicate that the patient may be consuming the food or fluid now or has consumed the food or fluid in the past.  The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician.  A common scenario where this information is captured is during the history taking process during a patient visit or stay or through an app that tracks food or fluids consumed.   The consumption information may come from sources such as the patient's memory, from a nutrition label,  or from a clinician documenting observed intake.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:instantiatesUri, :string)
    field(:recorded, :string)
    field(:instantiatesCanonical, :string)
    field(:reportedBoolean, :boolean)
    field(:language, :string)
    field(:resourceType, :string, default: "NutritionIntake")
    field(:implicitRules, :string)
    field(:occurrenceDateTime, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:reportedReference, Fhir.Reference)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:derivedFrom, Fhir.Reference)
    embeds_one(:_recorded, Fhir.Element)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:consumedItem, Fhir.NutritionIntakeConsumedItem)
    embeds_many(:ingredientLabel, Fhir.NutritionIntakeIngredientLabel)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:_instantiatesUri, Fhir.Element)
    embeds_many(:performer, Fhir.NutritionIntakePerformer)
    embeds_one(:occurrencePeriod, Fhir.Period)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_reportedBoolean, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:partOf, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:statusReason, Fhir.CodeableConcept)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          instantiatesUri: String.t(),
          recorded: String.t(),
          instantiatesCanonical: String.t(),
          reportedBoolean: boolean(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          occurrenceDateTime: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          reportedReference: Fhir.Reference.t(),
          reason: [Fhir.CodeableReference.t()],
          _implicitRules: Fhir.Element.t(),
          derivedFrom: [Fhir.Reference.t()],
          _recorded: Fhir.Element.t(),
          basedOn: [Fhir.Reference.t()],
          consumedItem: [Fhir.NutritionIntakeConsumedItem.t()],
          ingredientLabel: [Fhir.NutritionIntakeIngredientLabel.t()],
          encounter: Fhir.Reference.t(),
          _instantiatesUri: [Fhir.Element.t()],
          performer: [Fhir.NutritionIntakePerformer.t()],
          occurrencePeriod: Fhir.Period.t(),
          location: Fhir.Reference.t(),
          code: Fhir.CodeableConcept.t(),
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          _reportedBoolean: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          partOf: [Fhir.Reference.t()],
          _language: Fhir.Element.t(),
          statusReason: [Fhir.CodeableConcept.t()],
          _occurrenceDateTime: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :instantiatesUri,
      :recorded,
      :instantiatesCanonical,
      :reportedBoolean,
      :language,
      :resourceType,
      :implicitRules,
      :occurrenceDateTime,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:reportedReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:derivedFrom, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_recorded, with: &Fhir.Element.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:consumedItem, with: &Fhir.NutritionIntakeConsumedItem.changeset/2)
    |> cast_embed(:ingredientLabel, with: &Fhir.NutritionIntakeIngredientLabel.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:performer, with: &Fhir.NutritionIntakePerformer.changeset/2)
    |> cast_embed(:occurrencePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_reportedBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:statusReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :recorded,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
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
