defmodule Fhir.PaymentReconciliation do
  @moduledoc """
  This resource provides the details including amount of a payment and allocates the payment items being paid.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:referenceNumber, :string)
    field(:processor, :string)
    field(:authorization, :string)
    field(:outcome, :string)
    field(:language, :string)
    field(:created, :string)
    field(:resourceType, :string, default: "PaymentReconciliation")
    field(:expirationDate, :string)
    field(:cardBrand, :string)
    field(:implicitRules, :string)
    field(:accountNumber, :string)
    field(:status, :string)
    field(:disposition, :string)
    field(:id, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_outcome, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_expirationDate, Fhir.Element)
    embeds_one(:enterer, Fhir.Reference)
    embeds_one(:kind, Fhir.CodeableConcept)
    embeds_one(:requestor, Fhir.Reference)
    embeds_one(:returnedAmount, Fhir.Money)
    embeds_one(:_created, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:formCode, Fhir.CodeableConcept)
    embeds_one(:paymentIssuer, Fhir.Reference)
    embeds_one(:amount, Fhir.Money)
    embeds_one(:_cardBrand, Fhir.Element)
    embeds_one(:_disposition, Fhir.Element)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:_accountNumber, Fhir.Element)
    embeds_one(:_referenceNumber, Fhir.Element)
    embeds_many(:allocation, Fhir.PaymentReconciliationAllocation)
    embeds_one(:issuerType, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:paymentIdentifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:_authorization, Fhir.Element)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:processNote, Fhir.PaymentReconciliationProcessNote)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:_processor, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:period, Fhir.Period)
    embeds_one(:method, Fhir.CodeableConcept)
    embeds_one(:request, Fhir.Reference)
    embeds_one(:tenderedAmount, Fhir.Money)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          referenceNumber: String.t(),
          processor: String.t(),
          authorization: String.t(),
          outcome: String.t(),
          language: String.t(),
          created: String.t(),
          resourceType: String.t(),
          expirationDate: String.t(),
          cardBrand: String.t(),
          implicitRules: String.t(),
          accountNumber: String.t(),
          status: String.t(),
          disposition: String.t(),
          id: String.t(),
          _date: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          _outcome: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          _expirationDate: Fhir.Element.t(),
          enterer: Fhir.Reference.t(),
          kind: Fhir.CodeableConcept.t(),
          requestor: Fhir.Reference.t(),
          returnedAmount: Fhir.Money.t(),
          _created: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          formCode: Fhir.CodeableConcept.t(),
          paymentIssuer: Fhir.Reference.t(),
          amount: Fhir.Money.t(),
          _cardBrand: Fhir.Element.t(),
          _disposition: Fhir.Element.t(),
          location: Fhir.Reference.t(),
          _accountNumber: Fhir.Element.t(),
          _referenceNumber: Fhir.Element.t(),
          allocation: [Fhir.PaymentReconciliationAllocation.t()],
          issuerType: Fhir.CodeableConcept.t(),
          text: Fhir.Narrative.t(),
          paymentIdentifier: Fhir.Identifier.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          _authorization: Fhir.Element.t(),
          identifier: [Fhir.Identifier.t()],
          processNote: [Fhir.PaymentReconciliationProcessNote.t()],
          type: Fhir.CodeableConcept.t(),
          _processor: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          period: Fhir.Period.t(),
          method: Fhir.CodeableConcept.t(),
          request: Fhir.Reference.t(),
          tenderedAmount: Fhir.Money.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :date,
      :referenceNumber,
      :processor,
      :authorization,
      :outcome,
      :language,
      :created,
      :resourceType,
      :expirationDate,
      :cardBrand,
      :implicitRules,
      :accountNumber,
      :status,
      :disposition,
      :id
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_outcome, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_expirationDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:enterer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:kind, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:requestor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:returnedAmount, with: &Fhir.Money.changeset/2)
    |> cast_embed(:_created, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:formCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:paymentIssuer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:amount, with: &Fhir.Money.changeset/2)
    |> cast_embed(:_cardBrand, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_disposition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_accountNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_referenceNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:allocation, with: &Fhir.PaymentReconciliationAllocation.changeset/2)
    |> cast_embed(:issuerType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:paymentIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:_authorization, with: &Fhir.Element.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:processNote, with: &Fhir.PaymentReconciliationProcessNote.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_processor, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:method, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:request, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:tenderedAmount, with: &Fhir.Money.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:referenceNumber, ~r/^^[\s\S]+$$/)
    |> validate_format(:processor, ~r/^^[\s\S]+$$/)
    |> validate_format(:authorization, ~r/^^[\s\S]+$$/)
    |> validate_format(:outcome, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :created,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(
      :expirationDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:cardBrand, ~r/^^[\s\S]+$$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:accountNumber, ~r/^^[\s\S]+$$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:disposition, ~r/^^[\s\S]+$$/)
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
