defmodule Fhir.Immunization do
  @moduledoc """
  Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:primarySource, :boolean)
    field(:isSubpotent, :boolean)
    field(:language, :string)
    field(:resourceType, :string, default: "Immunization")
    field(:expirationDate, :string)
    field(:implicitRules, :string)
    field(:occurrenceDateTime, :string)
    field(:lotNumber, :string)
    field(:status, :string)
    field(:occurrenceString, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:informationSource, Fhir.CodeableReference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_expirationDate, Fhir.Element)
    embeds_one(:_occurrenceString, Fhir.Element)
    embeds_one(:_lotNumber, Fhir.Element)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_isSubpotent, Fhir.Element)
    embeds_many(:programEligibility, Fhir.ImmunizationProgramEligibility)
    embeds_one(:manufacturer, Fhir.CodeableReference)
    embeds_many(:protocolApplied, Fhir.ImmunizationProtocolApplied)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:supportingInformation, Fhir.Reference)
    embeds_many(:reaction, Fhir.ImmunizationReaction)
    embeds_one(:vaccineCode, Fhir.CodeableConcept)
    embeds_one(:route, Fhir.CodeableConcept)
    embeds_one(:site, Fhir.CodeableConcept)
    embeds_many(:subpotentReason, Fhir.CodeableConcept)
    embeds_one(:_primarySource, Fhir.Element)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:performer, Fhir.ImmunizationPerformer)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:fundingSource, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:administeredProduct, Fhir.CodeableReference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:statusReason, Fhir.CodeableConcept)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:doseQuantity, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          primarySource: boolean(),
          isSubpotent: boolean(),
          language: String.t(),
          resourceType: String.t(),
          expirationDate: String.t(),
          implicitRules: String.t(),
          occurrenceDateTime: String.t(),
          lotNumber: String.t(),
          status: String.t(),
          occurrenceString: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          informationSource: Fhir.CodeableReference.t(),
          contained: [Fhir.ResourceList.t()],
          _expirationDate: Fhir.Element.t(),
          _occurrenceString: Fhir.Element.t(),
          _lotNumber: Fhir.Element.t(),
          reason: [Fhir.CodeableReference.t()],
          _implicitRules: Fhir.Element.t(),
          _isSubpotent: Fhir.Element.t(),
          programEligibility: [Fhir.ImmunizationProgramEligibility.t()],
          manufacturer: Fhir.CodeableReference.t(),
          protocolApplied: [Fhir.ImmunizationProtocolApplied.t()],
          basedOn: [Fhir.Reference.t()],
          supportingInformation: [Fhir.Reference.t()],
          reaction: [Fhir.ImmunizationReaction.t()],
          vaccineCode: Fhir.CodeableConcept.t(),
          route: Fhir.CodeableConcept.t(),
          site: Fhir.CodeableConcept.t(),
          subpotentReason: [Fhir.CodeableConcept.t()],
          _primarySource: Fhir.Element.t(),
          encounter: Fhir.Reference.t(),
          performer: [Fhir.ImmunizationPerformer.t()],
          location: Fhir.Reference.t(),
          fundingSource: Fhir.CodeableConcept.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          administeredProduct: Fhir.CodeableReference.t(),
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          patient: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          statusReason: Fhir.CodeableConcept.t(),
          _occurrenceDateTime: Fhir.Element.t(),
          note: [Fhir.Annotation.t()],
          doseQuantity: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :primarySource,
      :isSubpotent,
      :language,
      :resourceType,
      :expirationDate,
      :implicitRules,
      :occurrenceDateTime,
      :lotNumber,
      :status,
      :occurrenceString,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:informationSource, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_expirationDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_occurrenceString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_lotNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_isSubpotent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:programEligibility, with: &Fhir.ImmunizationProgramEligibility.changeset/2)
    |> cast_embed(:manufacturer, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:protocolApplied, with: &Fhir.ImmunizationProtocolApplied.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:supportingInformation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:reaction, with: &Fhir.ImmunizationReaction.changeset/2)
    |> cast_embed(:vaccineCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:route, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:site, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subpotentReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_primarySource, with: &Fhir.Element.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:performer, with: &Fhir.ImmunizationPerformer.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:fundingSource, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:administeredProduct, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:statusReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:doseQuantity, with: &Fhir.Quantity.changeset/2)
    |> validate_inclusion(:primarySource, [true, false])
    |> validate_inclusion(:isSubpotent, [true, false])
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :expirationDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:lotNumber, ~r/^^[\s\S]+$$/)
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
