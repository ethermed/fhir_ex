defmodule Fhir.MedicationStatement do
  @moduledoc """
  A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future.  The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician.  A common scenario where this information is captured is during the history taking process during a patient visit or stay.   The medication information may come from sources such as the patient's memory, from a prescription bottle,  or from a list of medications the patient, clinician or other party maintains. 

  The primary difference between a medicationstatement and a medicationadministration is that the medication administration has complete administration information and is based on actual administration information from the person who administered the medication.  A medicationstatement is often, if not always, less specific.  There is no required date/time when the medication was administered, in fact we only know that a source has reported the patient is taking this medication, where details such as time, quantity, or rate or even medication product may be incomplete or missing or less precise.  As stated earlier, the Medication Statement information may come from the patient's memory, from a prescription bottle or from a list of medications the patient, clinician or other party maintains.  Medication administration is more formal and is not missing detailed information.

  The MedicationStatement resource was previously called MedicationStatement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:effectiveDateTime, :string)
    field(:dateAsserted, :string)
    field(:renderedDosageInstruction, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "MedicationStatement")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:dosage, Fhir.Dosage)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:informationSource, Fhir.Reference)
    embeds_one(:effectiveTiming, Fhir.Timing)
    embeds_one(:_dateAsserted, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:derivedFrom, Fhir.Reference)
    embeds_many(:relatedClinicalInformation, Fhir.Reference)
    embeds_one(:medication, Fhir.CodeableReference)
    embeds_one(:effectivePeriod, Fhir.Period)
    embeds_one(:encounter, Fhir.Reference)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:adherence, Fhir.MedicationStatementAdherence)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_renderedDosageInstruction, Fhir.Element)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:partOf, Fhir.Reference)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_effectiveDateTime, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          effectiveDateTime: String.t(),
          dateAsserted: String.t(),
          renderedDosageInstruction: String.t(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          dosage: [Fhir.Dosage.t()],
          extension: [Fhir.Extension.t()],
          informationSource: [Fhir.Reference.t()],
          effectiveTiming: Fhir.Timing.t(),
          _dateAsserted: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          reason: [Fhir.CodeableReference.t()],
          _implicitRules: Fhir.Element.t(),
          derivedFrom: [Fhir.Reference.t()],
          relatedClinicalInformation: [Fhir.Reference.t()],
          medication: Fhir.CodeableReference.t(),
          effectivePeriod: Fhir.Period.t(),
          encounter: Fhir.Reference.t(),
          subject: Fhir.Reference.t(),
          adherence: Fhir.MedicationStatementAdherence.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          _renderedDosageInstruction: Fhir.Element.t(),
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          partOf: [Fhir.Reference.t()],
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          _effectiveDateTime: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :effectiveDateTime,
      :dateAsserted,
      :renderedDosageInstruction,
      :language,
      :resourceType,
      :implicitRules,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dosage, with: &Fhir.Dosage.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:informationSource, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:effectiveTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:_dateAsserted, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:derivedFrom, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:relatedClinicalInformation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:medication, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:effectivePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:adherence, with: &Fhir.MedicationStatementAdherence.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_renderedDosageInstruction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_effectiveDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :dateAsserted,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:renderedDosageInstruction, ~r/^^[\s\S]+$$/)
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
