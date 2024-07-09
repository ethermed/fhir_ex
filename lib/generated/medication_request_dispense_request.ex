defmodule Fhir.MedicationRequestDispenseRequest do
  @moduledoc """
  An order or request for both supply of the medication and the instructions for administration of the medication to a patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow patterns.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:numberOfRepeatsAllowed, :float)
    embeds_one(:_numberOfRepeatsAllowed, Fhir.Element)
    embeds_one(:dispenseInterval, Fhir.Duration)
    embeds_one(:dispenser, Fhir.Reference)
    embeds_many(:dispenserInstruction, Fhir.Annotation)
    embeds_one(:doseAdministrationAid, Fhir.CodeableConcept)
    embeds_one(:expectedSupplyDuration, Fhir.Duration)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:initialFill, Fhir.MedicationRequestInitialFill)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_one(:validityPeriod, Fhir.Period)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          numberOfRepeatsAllowed: float(),
          _numberOfRepeatsAllowed: Fhir.Element.t(),
          dispenseInterval: Fhir.Duration.t(),
          dispenser: Fhir.Reference.t(),
          dispenserInstruction: [Fhir.Annotation.t()],
          doseAdministrationAid: Fhir.CodeableConcept.t(),
          expectedSupplyDuration: Fhir.Duration.t(),
          extension: [Fhir.Extension.t()],
          initialFill: Fhir.MedicationRequestInitialFill.t(),
          modifierExtension: [Fhir.Extension.t()],
          quantity: Fhir.Quantity.t(),
          validityPeriod: Fhir.Period.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :numberOfRepeatsAllowed])
    |> cast_embed(:_numberOfRepeatsAllowed, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dispenseInterval, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:dispenser, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:dispenserInstruction, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:doseAdministrationAid, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:expectedSupplyDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:initialFill, with: &Fhir.MedicationRequestInitialFill.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:validityPeriod, with: &Fhir.Period.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:numberOfRepeatsAllowed, ~r/^[0]|([1-9][0-9]*)$/)
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
