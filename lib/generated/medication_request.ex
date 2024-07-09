defmodule Fhir.MedicationRequest do
  @moduledoc """
  An order or request for both supply of the medication and the instructions for administration of the medication to a patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow patterns.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:intent, :string)
    field(:statusChanged, :string)
    field(:doNotPerform, :boolean)
    field(:renderedDosageInstruction, :string)
    field(:language, :string)
    field(:authoredOn, :string)
    field(:reported, :boolean)
    field(:priority, :string)
    field(:resourceType, :string, default: "MedicationRequest")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:informationSource, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_reported, Fhir.Element)
    embeds_one(:_authoredOn, Fhir.Element)
    embeds_one(:groupIdentifier, Fhir.Identifier)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_statusChanged, Fhir.Element)
    embeds_one(:requester, Fhir.Reference)
    embeds_one(:medication, Fhir.CodeableReference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_one(:_priority, Fhir.Element)
    embeds_many(:supportingInformation, Fhir.Reference)
    embeds_one(:effectiveDosePeriod, Fhir.Period)
    embeds_one(:_intent, Fhir.Element)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:performer, Fhir.Reference)
    embeds_one(:subject, Fhir.Reference)
    embeds_many(:insurance, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:priorPrescription, Fhir.Reference)
    embeds_many(:eventHistory, Fhir.Reference)
    embeds_one(:_renderedDosageInstruction, Fhir.Element)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:dosageInstruction, Fhir.Dosage)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_doNotPerform, Fhir.Element)
    embeds_one(:substitution, Fhir.MedicationRequestSubstitution)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:recorder, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:dispenseRequest, Fhir.MedicationRequestDispenseRequest)
    embeds_many(:device, Fhir.CodeableReference)
    embeds_one(:statusReason, Fhir.CodeableConcept)
    embeds_one(:courseOfTherapyType, Fhir.CodeableConcept)
    embeds_one(:performerType, Fhir.CodeableConcept)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          intent: String.t(),
          statusChanged: String.t(),
          doNotPerform: boolean(),
          renderedDosageInstruction: String.t(),
          language: String.t(),
          authoredOn: String.t(),
          reported: boolean(),
          priority: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          informationSource: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          _reported: Fhir.Element.t(),
          _authoredOn: Fhir.Element.t(),
          groupIdentifier: Fhir.Identifier.t(),
          reason: [Fhir.CodeableReference.t()],
          _implicitRules: Fhir.Element.t(),
          _statusChanged: Fhir.Element.t(),
          requester: Fhir.Reference.t(),
          medication: Fhir.CodeableReference.t(),
          basedOn: [Fhir.Reference.t()],
          _priority: Fhir.Element.t(),
          supportingInformation: [Fhir.Reference.t()],
          effectiveDosePeriod: Fhir.Period.t(),
          _intent: Fhir.Element.t(),
          encounter: Fhir.Reference.t(),
          performer: [Fhir.Reference.t()],
          subject: Fhir.Reference.t(),
          insurance: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          priorPrescription: Fhir.Reference.t(),
          eventHistory: [Fhir.Reference.t()],
          _renderedDosageInstruction: Fhir.Element.t(),
          meta: Fhir.Meta.t(),
          dosageInstruction: [Fhir.Dosage.t()],
          identifier: [Fhir.Identifier.t()],
          _doNotPerform: Fhir.Element.t(),
          substitution: Fhir.MedicationRequestSubstitution.t(),
          category: [Fhir.CodeableConcept.t()],
          recorder: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          dispenseRequest: Fhir.MedicationRequestDispenseRequest.t(),
          device: [Fhir.CodeableReference.t()],
          statusReason: Fhir.CodeableConcept.t(),
          courseOfTherapyType: Fhir.CodeableConcept.t(),
          performerType: Fhir.CodeableConcept.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :intent,
      :statusChanged,
      :doNotPerform,
      :renderedDosageInstruction,
      :language,
      :authoredOn,
      :reported,
      :priority,
      :resourceType,
      :implicitRules,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:informationSource, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_reported, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_authoredOn, with: &Fhir.Element.changeset/2)
    |> cast_embed(:groupIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_statusChanged, with: &Fhir.Element.changeset/2)
    |> cast_embed(:requester, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:medication, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_priority, with: &Fhir.Element.changeset/2)
    |> cast_embed(:supportingInformation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:effectiveDosePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_intent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:performer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:insurance, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:priorPrescription, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:eventHistory, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_renderedDosageInstruction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:dosageInstruction, with: &Fhir.Dosage.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_doNotPerform, with: &Fhir.Element.changeset/2)
    |> cast_embed(:substitution, with: &Fhir.MedicationRequestSubstitution.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:recorder, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dispenseRequest, with: &Fhir.MedicationRequestDispenseRequest.changeset/2)
    |> cast_embed(:device, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:statusReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:courseOfTherapyType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:performerType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(:intent, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :statusChanged,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_inclusion(:doNotPerform, [true, false])
    |> validate_format(:renderedDosageInstruction, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :authoredOn,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_inclusion(:reported, [true, false])
    |> validate_format(:priority, ~r/^[^\s]+( [^\s]+)*$/)
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
