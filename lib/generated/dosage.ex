defmodule Fhir.Dosage do
  @moduledoc """
  Indicates how the medication is/was taken or should be taken by the patient.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:asNeeded, :boolean)
    field(:id, :string)
    field(:patientInstruction, :string)
    field(:sequence, :float)
    field(:text, :string)
    embeds_one(:_asNeeded, Fhir.Element)
    embeds_one(:_patientInstruction, Fhir.Element)
    embeds_one(:_sequence, Fhir.Element)
    embeds_one(:_text, Fhir.Element)
    embeds_many(:additionalInstruction, Fhir.CodeableConcept)
    embeds_many(:asNeededFor, Fhir.CodeableConcept)
    embeds_many(:doseAndRate, Fhir.DosageDoseAndRate)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:maxDosePerAdministration, Fhir.Quantity)
    embeds_one(:maxDosePerLifetime, Fhir.Quantity)
    embeds_many(:maxDosePerPeriod, Fhir.Ratio)
    embeds_one(:method, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:route, Fhir.CodeableConcept)
    embeds_one(:site, Fhir.CodeableConcept)
    embeds_one(:timing, Fhir.Timing)
  end

  @type t :: %__MODULE__{
          asNeeded: boolean(),
          id: String.t(),
          patientInstruction: String.t(),
          sequence: float(),
          text: String.t(),
          _asNeeded: Fhir.Element.t(),
          _patientInstruction: Fhir.Element.t(),
          _sequence: Fhir.Element.t(),
          _text: Fhir.Element.t(),
          additionalInstruction: [Fhir.CodeableConcept.t()],
          asNeededFor: [Fhir.CodeableConcept.t()],
          doseAndRate: [Fhir.DosageDoseAndRate.t()],
          extension: [Fhir.Extension.t()],
          maxDosePerAdministration: Fhir.Quantity.t(),
          maxDosePerLifetime: Fhir.Quantity.t(),
          maxDosePerPeriod: [Fhir.Ratio.t()],
          method: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          route: Fhir.CodeableConcept.t(),
          site: Fhir.CodeableConcept.t(),
          timing: Fhir.Timing.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:asNeeded, :id, :patientInstruction, :sequence, :text])
    |> cast_embed(:_asNeeded, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_patientInstruction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:additionalInstruction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:asNeededFor, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:doseAndRate, with: &Fhir.DosageDoseAndRate.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:maxDosePerAdministration, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:maxDosePerLifetime, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:maxDosePerPeriod, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:method, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:route, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:site, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:timing, with: &Fhir.Timing.changeset/2)
    |> validate_inclusion(:asNeeded, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:patientInstruction, ~r/^^[\s\S]+$$/)
    |> validate_format(:sequence, ~r/^[0]|[-+]?[1-9][0-9]*$/)
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
