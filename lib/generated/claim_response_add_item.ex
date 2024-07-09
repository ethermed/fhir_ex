defmodule Fhir.ClaimResponseAddItem do
  @moduledoc """
  This resource provides the adjudication details from the processing of a Claim resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:factor, :float)
    field(:subdetailSequence, :string)
    field(:detailSequence, :string)
    field(:servicedDate, :string)
    field(:noteNumber, :string)
    field(:id, :string)
    field(:itemSequence, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:revenue, Fhir.CodeableConcept)
    embeds_one(:_factor, Fhir.Element)
    embeds_many(:_subdetailSequence, Fhir.Element)
    embeds_many(:traceNumber, Fhir.Identifier)
    embeds_many(:modifier, Fhir.CodeableConcept)
    embeds_one(:reviewOutcome, Fhir.ClaimResponseReviewOutcome)
    embeds_many(:programCode, Fhir.CodeableConcept)
    embeds_one(:_servicedDate, Fhir.Element)
    embeds_many(:provider, Fhir.Reference)
    embeds_one(:locationAddress, Fhir.Address)
    embeds_many(:_detailSequence, Fhir.Element)
    embeds_one(:productOrServiceEnd, Fhir.CodeableConcept)
    embeds_one(:servicedPeriod, Fhir.Period)
    embeds_many(:_noteNumber, Fhir.Element)
    embeds_many(:detail, Fhir.ClaimResponseDetail1)
    embeds_one(:locationReference, Fhir.Reference)
    embeds_many(:bodySite, Fhir.ClaimResponseBodySite)
    embeds_one(:unitPrice, Fhir.Money)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:adjudication, Fhir.ClaimResponseAdjudication)
    embeds_one(:net, Fhir.Money)
    embeds_many(:_itemSequence, Fhir.Element)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_many(:request, Fhir.Reference)
    embeds_one(:locationCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:tax, Fhir.Money)
    embeds_one(:productOrService, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          factor: float(),
          subdetailSequence: String.t(),
          detailSequence: String.t(),
          servicedDate: String.t(),
          noteNumber: String.t(),
          id: String.t(),
          itemSequence: String.t(),
          extension: [Fhir.Extension.t()],
          revenue: Fhir.CodeableConcept.t(),
          _factor: Fhir.Element.t(),
          _subdetailSequence: [Fhir.Element.t()],
          traceNumber: [Fhir.Identifier.t()],
          modifier: [Fhir.CodeableConcept.t()],
          reviewOutcome: Fhir.ClaimResponseReviewOutcome.t(),
          programCode: [Fhir.CodeableConcept.t()],
          _servicedDate: Fhir.Element.t(),
          provider: [Fhir.Reference.t()],
          locationAddress: Fhir.Address.t(),
          _detailSequence: [Fhir.Element.t()],
          productOrServiceEnd: Fhir.CodeableConcept.t(),
          servicedPeriod: Fhir.Period.t(),
          _noteNumber: [Fhir.Element.t()],
          detail: [Fhir.ClaimResponseDetail1.t()],
          locationReference: Fhir.Reference.t(),
          bodySite: [Fhir.ClaimResponseBodySite.t()],
          unitPrice: Fhir.Money.t(),
          modifierExtension: [Fhir.Extension.t()],
          adjudication: [Fhir.ClaimResponseAdjudication.t()],
          net: Fhir.Money.t(),
          _itemSequence: [Fhir.Element.t()],
          quantity: Fhir.Quantity.t(),
          request: [Fhir.Reference.t()],
          locationCodeableConcept: Fhir.CodeableConcept.t(),
          tax: Fhir.Money.t(),
          productOrService: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :factor,
      :subdetailSequence,
      :detailSequence,
      :servicedDate,
      :noteNumber,
      :id,
      :itemSequence
    ])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:revenue, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_factor, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_subdetailSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:traceNumber, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:reviewOutcome, with: &Fhir.ClaimResponseReviewOutcome.changeset/2)
    |> cast_embed(:programCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_servicedDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:provider, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:locationAddress, with: &Fhir.Address.changeset/2)
    |> cast_embed(:_detailSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:productOrServiceEnd, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:servicedPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:_noteNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:detail, with: &Fhir.ClaimResponseDetail1.changeset/2)
    |> cast_embed(:locationReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.ClaimResponseBodySite.changeset/2)
    |> cast_embed(:unitPrice, with: &Fhir.Money.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:adjudication, with: &Fhir.ClaimResponseAdjudication.changeset/2)
    |> cast_embed(:net, with: &Fhir.Money.changeset/2)
    |> cast_embed(:_itemSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:request, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:locationCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:tax, with: &Fhir.Money.changeset/2)
    |> cast_embed(:productOrService, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
