defmodule Fhir.Invoice do
  @moduledoc """
  Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing purpose.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:cancelledReason, :string)
    field(:periodDate, :string)
    field(:language, :string)
    field(:paymentTerms, :string)
    field(:resourceType, :string, default: "Invoice")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:creation, :string)
    field(:id, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:participant, Fhir.InvoiceParticipant)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_creation, Fhir.Element)
    embeds_one(:_periodDate, Fhir.Element)
    embeds_one(:periodPeriod, Fhir.Period)
    embeds_many(:lineItem, Fhir.InvoiceLineItem)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:recipient, Fhir.Reference)
    embeds_many(:totalPriceComponent, Fhir.MonetaryComponent)
    embeds_one(:_paymentTerms, Fhir.Element)
    embeds_one(:totalGross, Fhir.Money)
    embeds_one(:account, Fhir.Reference)
    embeds_one(:totalNet, Fhir.Money)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:_cancelledReason, Fhir.Element)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:issuer, Fhir.Reference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          cancelledReason: String.t(),
          periodDate: String.t(),
          language: String.t(),
          paymentTerms: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          creation: String.t(),
          id: String.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          participant: [Fhir.InvoiceParticipant.t()],
          contained: [Fhir.ResourceList.t()],
          _creation: Fhir.Element.t(),
          _periodDate: Fhir.Element.t(),
          periodPeriod: Fhir.Period.t(),
          lineItem: [Fhir.InvoiceLineItem.t()],
          _implicitRules: Fhir.Element.t(),
          recipient: Fhir.Reference.t(),
          totalPriceComponent: [Fhir.MonetaryComponent.t()],
          _paymentTerms: Fhir.Element.t(),
          totalGross: Fhir.Money.t(),
          account: Fhir.Reference.t(),
          totalNet: Fhir.Money.t(),
          subject: Fhir.Reference.t(),
          _cancelledReason: Fhir.Element.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          issuer: Fhir.Reference.t(),
          identifier: [Fhir.Identifier.t()],
          type: Fhir.CodeableConcept.t(),
          _language: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :date,
      :cancelledReason,
      :periodDate,
      :language,
      :paymentTerms,
      :resourceType,
      :implicitRules,
      :status,
      :creation,
      :id
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:participant, with: &Fhir.InvoiceParticipant.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_creation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_periodDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:periodPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:lineItem, with: &Fhir.InvoiceLineItem.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:recipient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:totalPriceComponent, with: &Fhir.MonetaryComponent.changeset/2)
    |> cast_embed(:_paymentTerms, with: &Fhir.Element.changeset/2)
    |> cast_embed(:totalGross, with: &Fhir.Money.changeset/2)
    |> cast_embed(:account, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:totalNet, with: &Fhir.Money.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_cancelledReason, with: &Fhir.Element.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:issuer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:cancelledReason, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:paymentTerms, ~r/^^[\s\S]+$$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :creation,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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
