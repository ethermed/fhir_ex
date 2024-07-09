defmodule Fhir.PaymentNotice do
  @moduledoc """
  This resource provides the status of the payment for goods and services rendered, and the request and response resource references.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:created, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:paymentDate, :string)
    field(:resourceType, :string, default: "PaymentNotice")
    field(:status, :string)
    embeds_one(:_created, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_paymentDate, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:amount, Fhir.Money)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:payee, Fhir.Reference)
    embeds_one(:payment, Fhir.Reference)
    embeds_one(:paymentStatus, Fhir.CodeableConcept)
    embeds_one(:recipient, Fhir.Reference)
    embeds_one(:reporter, Fhir.Reference)
    embeds_one(:request, Fhir.Reference)
    embeds_one(:response, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          created: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          paymentDate: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _created: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _paymentDate: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          amount: Fhir.Money.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          payee: Fhir.Reference.t(),
          payment: Fhir.Reference.t(),
          paymentStatus: Fhir.CodeableConcept.t(),
          recipient: Fhir.Reference.t(),
          reporter: Fhir.Reference.t(),
          request: Fhir.Reference.t(),
          response: Fhir.Reference.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :created,
      :id,
      :implicitRules,
      :language,
      :paymentDate,
      :resourceType,
      :status
    ])
    |> cast_embed(:_created, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_paymentDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:amount, with: &Fhir.Money.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:payee, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:payment, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:paymentStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:recipient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:reporter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:request, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:response, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(
      :created,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :paymentDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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
