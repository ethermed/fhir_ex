defmodule Fhir.MedicationAdministration do
  @moduledoc """
  Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:recorded, :string)
    field(:language, :string)
    field(:occurenceDateTime, :string)
    field(:resourceType, :string, default: "MedicationAdministration")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:isSubPotent, :boolean)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:dosage, Fhir.MedicationAdministrationDosage)
    embeds_one(:_occurenceDateTime, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_recorded, Fhir.Element)
    embeds_one(:medication, Fhir.CodeableReference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:supportingInformation, Fhir.Reference)
    embeds_many(:subPotentReason, Fhir.CodeableConcept)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:performer, Fhir.MedicationAdministrationPerformer)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_isSubPotent, Fhir.Element)
    embeds_many(:eventHistory, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:occurencePeriod, Fhir.Period)
    embeds_many(:partOf, Fhir.Reference)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:occurenceTiming, Fhir.Timing)
    embeds_many(:device, Fhir.CodeableReference)
    embeds_one(:request, Fhir.Reference)
    embeds_many(:statusReason, Fhir.CodeableConcept)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          recorded: String.t(),
          language: String.t(),
          occurenceDateTime: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          isSubPotent: boolean(),
          id: String.t(),
          _status: Fhir.Element.t(),
          dosage: Fhir.MedicationAdministrationDosage.t(),
          _occurenceDateTime: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          reason: [Fhir.CodeableReference.t()],
          _implicitRules: Fhir.Element.t(),
          _recorded: Fhir.Element.t(),
          medication: Fhir.CodeableReference.t(),
          basedOn: [Fhir.Reference.t()],
          supportingInformation: [Fhir.Reference.t()],
          subPotentReason: [Fhir.CodeableConcept.t()],
          encounter: Fhir.Reference.t(),
          performer: [Fhir.MedicationAdministrationPerformer.t()],
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          _isSubPotent: Fhir.Element.t(),
          eventHistory: [Fhir.Reference.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          occurencePeriod: Fhir.Period.t(),
          partOf: [Fhir.Reference.t()],
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          occurenceTiming: Fhir.Timing.t(),
          device: [Fhir.CodeableReference.t()],
          request: Fhir.Reference.t(),
          statusReason: [Fhir.CodeableConcept.t()],
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :recorded,
      :language,
      :occurenceDateTime,
      :resourceType,
      :implicitRules,
      :status,
      :isSubPotent,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dosage, with: &Fhir.MedicationAdministrationDosage.changeset/2)
    |> cast_embed(:_occurenceDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_recorded, with: &Fhir.Element.changeset/2)
    |> cast_embed(:medication, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:supportingInformation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subPotentReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:performer, with: &Fhir.MedicationAdministrationPerformer.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_isSubPotent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:eventHistory, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:occurencePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:occurenceTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:device, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:request, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:statusReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :recorded,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:isSubPotent, [true, false])
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
