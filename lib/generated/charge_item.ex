defmodule Fhir.ChargeItem do
  @moduledoc """
  The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore referring not only to the product, but containing in addition details of the provision, like date, time, amounts and participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and internal cost allocation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:definitionCanonical, :string)
    field(:enteredDate, :string)
    field(:language, :string)
    field(:definitionUri, :string)
    field(:resourceType, :string, default: "ChargeItem")
    field(:implicitRules, :string)
    field(:occurrenceDateTime, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:performingOrganization, Fhir.Reference)
    embeds_one(:enterer, Fhir.Reference)
    embeds_many(:reason, Fhir.CodeableConcept)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:service, Fhir.CodeableReference)
    embeds_one(:totalPriceComponent, Fhir.MonetaryComponent)
    embeds_many(:supportingInformation, Fhir.Reference)
    embeds_many(:_definitionUri, Fhir.Element)
    embeds_many(:account, Fhir.Reference)
    embeds_many(:product, Fhir.CodeableReference)
    embeds_one(:costCenter, Fhir.Reference)
    embeds_one(:encounter, Fhir.Reference)
    embeds_one(:_enteredDate, Fhir.Element)
    embeds_one(:overrideReason, Fhir.CodeableConcept)
    embeds_many(:performer, Fhir.ChargeItemPerformer)
    embeds_one(:occurrencePeriod, Fhir.Period)
    embeds_one(:occurrenceTiming, Fhir.Timing)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:requestingOrganization, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:unitPriceComponent, Fhir.MonetaryComponent)
    embeds_many(:partOf, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_many(:bodysite, Fhir.CodeableConcept)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          definitionCanonical: String.t(),
          enteredDate: String.t(),
          language: String.t(),
          definitionUri: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          occurrenceDateTime: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          performingOrganization: Fhir.Reference.t(),
          enterer: Fhir.Reference.t(),
          reason: [Fhir.CodeableConcept.t()],
          _implicitRules: Fhir.Element.t(),
          service: [Fhir.CodeableReference.t()],
          totalPriceComponent: Fhir.MonetaryComponent.t(),
          supportingInformation: [Fhir.Reference.t()],
          _definitionUri: [Fhir.Element.t()],
          account: [Fhir.Reference.t()],
          product: [Fhir.CodeableReference.t()],
          costCenter: Fhir.Reference.t(),
          encounter: Fhir.Reference.t(),
          _enteredDate: Fhir.Element.t(),
          overrideReason: Fhir.CodeableConcept.t(),
          performer: [Fhir.ChargeItemPerformer.t()],
          occurrencePeriod: Fhir.Period.t(),
          occurrenceTiming: Fhir.Timing.t(),
          code: Fhir.CodeableConcept.t(),
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          requestingOrganization: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          unitPriceComponent: Fhir.MonetaryComponent.t(),
          partOf: [Fhir.Reference.t()],
          _language: Fhir.Element.t(),
          quantity: Fhir.Quantity.t(),
          bodysite: [Fhir.CodeableConcept.t()],
          _occurrenceDateTime: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :definitionCanonical,
      :enteredDate,
      :language,
      :definitionUri,
      :resourceType,
      :implicitRules,
      :occurrenceDateTime,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:performingOrganization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:enterer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:service, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:totalPriceComponent, with: &Fhir.MonetaryComponent.changeset/2)
    |> cast_embed(:supportingInformation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_definitionUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:account, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:product, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:costCenter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_enteredDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:overrideReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:performer, with: &Fhir.ChargeItemPerformer.changeset/2)
    |> cast_embed(:occurrencePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:occurrenceTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:requestingOrganization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:unitPriceComponent, with: &Fhir.MonetaryComponent.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:bodysite, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :enteredDate,
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
