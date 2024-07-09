defmodule Fhir.NutritionIntakeConsumedItem do
  @moduledoc """
  A record of food or fluid that is being consumed by a patient.   A NutritionIntake may indicate that the patient may be consuming the food or fluid now or has consumed the food or fluid in the past.  The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician.  A common scenario where this information is captured is during the history taking process during a patient visit or stay or through an app that tracks food or fluids consumed.   The consumption information may come from sources such as the patient's memory, from a nutrition label,  or from a clinician documenting observed intake.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:notConsumed, :boolean)
    embeds_one(:_notConsumed, Fhir.Element)
    embeds_one(:amount, Fhir.Quantity)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:notConsumedReason, Fhir.CodeableConcept)
    embeds_one(:nutritionProduct, Fhir.CodeableReference)
    embeds_one(:rate, Fhir.Quantity)
    embeds_one(:schedule, Fhir.Timing)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          notConsumed: boolean(),
          _notConsumed: Fhir.Element.t(),
          amount: Fhir.Quantity.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          notConsumedReason: Fhir.CodeableConcept.t(),
          nutritionProduct: Fhir.CodeableReference.t(),
          rate: Fhir.Quantity.t(),
          schedule: Fhir.Timing.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :notConsumed])
    |> cast_embed(:_notConsumed, with: &Fhir.Element.changeset/2)
    |> cast_embed(:amount, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:notConsumedReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:nutritionProduct, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:rate, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:schedule, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:notConsumed, [true, false])
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
