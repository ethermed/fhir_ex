defmodule Fhir.Coverage do
  @moduledoc """
  Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:kind, :string)
    field(:subrogation, :boolean)
    field(:language, :string)
    field(:order, :float)
    field(:dependent, :string)
    field(:network, :string)
    field(:resourceType, :string, default: "Coverage")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_many(:paymentBy, Fhir.CoveragePaymentBy)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:policyHolder, Fhir.Reference)
    embeds_one(:relationship, Fhir.CodeableConcept)
    embeds_many(:subscriberId, Fhir.Identifier)
    embeds_one(:_network, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_dependent, Fhir.Element)
    embeds_many(:contract, Fhir.Reference)
    embeds_one(:_kind, Fhir.Element)
    embeds_one(:subscriber, Fhir.Reference)
    embeds_one(:insurancePlan, Fhir.Reference)
    embeds_many(:class, Fhir.CoverageClass)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:costToBeneficiary, Fhir.CoverageCostToBeneficiary)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_order, Fhir.Element)
    embeds_one(:insurer, Fhir.Reference)
    embeds_one(:_subrogation, Fhir.Element)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:beneficiary, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:period, Fhir.Period)
  end

  @type t :: %__MODULE__{
          kind: String.t(),
          subrogation: boolean(),
          language: String.t(),
          order: float(),
          dependent: String.t(),
          network: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          paymentBy: [Fhir.CoveragePaymentBy.t()],
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          policyHolder: Fhir.Reference.t(),
          relationship: Fhir.CodeableConcept.t(),
          subscriberId: [Fhir.Identifier.t()],
          _network: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _dependent: Fhir.Element.t(),
          contract: [Fhir.Reference.t()],
          _kind: Fhir.Element.t(),
          subscriber: Fhir.Reference.t(),
          insurancePlan: Fhir.Reference.t(),
          class: [Fhir.CoverageClass.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          costToBeneficiary: [Fhir.CoverageCostToBeneficiary.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          _order: Fhir.Element.t(),
          insurer: Fhir.Reference.t(),
          _subrogation: Fhir.Element.t(),
          type: Fhir.CodeableConcept.t(),
          beneficiary: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          period: Fhir.Period.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :kind,
      :subrogation,
      :language,
      :order,
      :dependent,
      :network,
      :resourceType,
      :implicitRules,
      :status,
      :id
    ])
    |> cast_embed(:paymentBy, with: &Fhir.CoveragePaymentBy.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:policyHolder, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:relationship, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subscriberId, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_network, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_dependent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contract, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_kind, with: &Fhir.Element.changeset/2)
    |> cast_embed(:subscriber, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:insurancePlan, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:class, with: &Fhir.CoverageClass.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:costToBeneficiary, with: &Fhir.CoverageCostToBeneficiary.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_order, with: &Fhir.Element.changeset/2)
    |> cast_embed(:insurer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_subrogation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:beneficiary, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> validate_format(:kind, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:subrogation, [true, false])
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:dependent, ~r/^^[\s\S]+$$/)
    |> validate_format(:network, ~r/^^[\s\S]+$$/)
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
