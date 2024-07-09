defmodule Fhir.MedicationDispense do
  @moduledoc """
  Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a description of the medication product (supply) provided and the instructions for administering the medication.  The medication dispense is the result of a pharmacy system responding to a medication order.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:whenHandedOver, :string)
    field(:recorded, :string)
    field(:whenPrepared, :string)
    field(:statusChanged, :string)
    field(:renderedDosageInstruction, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "MedicationDispense")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_statusChanged, Fhir.Element)
    embeds_one(:_recorded, Fhir.Element)
    embeds_many(:receiver, Fhir.Reference)
    embeds_one(:medication, Fhir.CodeableReference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:supportingInformation, Fhir.Reference)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:performer, Fhir.MedicationDispensePerformer)
    embeds_one(:daysSupply, Fhir.Quantity)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_whenPrepared, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:notPerformedReason, Fhir.CodeableReference)
    embeds_many(:eventHistory, Fhir.Reference)
    embeds_one(:_renderedDosageInstruction, Fhir.Element)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:dosageInstruction, Fhir.Dosage)
    embeds_one(:_whenHandedOver, Fhir.Element)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:destination, Fhir.Reference)
    embeds_many(:partOf, Fhir.Reference)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:substitution, Fhir.MedicationDispenseSubstitution)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_many(:authorizingPrescription, Fhir.Reference)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          whenHandedOver: String.t(),
          recorded: String.t(),
          whenPrepared: String.t(),
          statusChanged: String.t(),
          renderedDosageInstruction: String.t(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          _implicitRules: Fhir.Element.t(),
          _statusChanged: Fhir.Element.t(),
          _recorded: Fhir.Element.t(),
          receiver: [Fhir.Reference.t()],
          medication: Fhir.CodeableReference.t(),
          basedOn: [Fhir.Reference.t()],
          supportingInformation: [Fhir.Reference.t()],
          encounter: Fhir.Reference.t(),
          performer: [Fhir.MedicationDispensePerformer.t()],
          daysSupply: Fhir.Quantity.t(),
          location: Fhir.Reference.t(),
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          _whenPrepared: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          notPerformedReason: Fhir.CodeableReference.t(),
          eventHistory: [Fhir.Reference.t()],
          _renderedDosageInstruction: Fhir.Element.t(),
          meta: Fhir.Meta.t(),
          dosageInstruction: [Fhir.Dosage.t()],
          _whenHandedOver: Fhir.Element.t(),
          identifier: [Fhir.Identifier.t()],
          destination: Fhir.Reference.t(),
          partOf: [Fhir.Reference.t()],
          type: Fhir.CodeableConcept.t(),
          substitution: Fhir.MedicationDispenseSubstitution.t(),
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          quantity: Fhir.Quantity.t(),
          authorizingPrescription: [Fhir.Reference.t()],
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :whenHandedOver,
      :recorded,
      :whenPrepared,
      :statusChanged,
      :renderedDosageInstruction,
      :language,
      :resourceType,
      :implicitRules,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_statusChanged, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_recorded, with: &Fhir.Element.changeset/2)
    |> cast_embed(:receiver, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:medication, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:supportingInformation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:performer, with: &Fhir.MedicationDispensePerformer.changeset/2)
    |> cast_embed(:daysSupply, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_whenPrepared, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:notPerformedReason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:eventHistory, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_renderedDosageInstruction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:dosageInstruction, with: &Fhir.Dosage.changeset/2)
    |> cast_embed(:_whenHandedOver, with: &Fhir.Element.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:destination, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:substitution, with: &Fhir.MedicationDispenseSubstitution.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:authorizingPrescription, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :whenHandedOver,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(
      :recorded,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(
      :whenPrepared,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(
      :statusChanged,
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
