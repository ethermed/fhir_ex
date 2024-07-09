defmodule Fhir.ExplanationOfBenefitItem do
  @moduledoc """
  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:sequence, :float)
    field(:informationSequence, :string)
    field(:factor, :float)
    field(:procedureSequence, :string)
    field(:servicedDate, :string)
    field(:careTeamSequence, :string)
    field(:noteNumber, :string)
    field(:diagnosisSequence, :string)
    field(:id, :string)
    embeds_many(:_informationSequence, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:revenue, Fhir.CodeableConcept)
    embeds_one(:patientPaid, Fhir.Money)
    embeds_one(:_factor, Fhir.Element)
    embeds_many(:traceNumber, Fhir.Identifier)
    embeds_many(:modifier, Fhir.CodeableConcept)
    embeds_one(:reviewOutcome, Fhir.ExplanationOfBenefitReviewOutcome)
    embeds_many(:programCode, Fhir.CodeableConcept)
    embeds_many(:udi, Fhir.Reference)
    embeds_one(:_servicedDate, Fhir.Element)
    embeds_many(:_careTeamSequence, Fhir.Element)
    embeds_one(:locationAddress, Fhir.Address)
    embeds_one(:productOrServiceEnd, Fhir.CodeableConcept)
    embeds_one(:_sequence, Fhir.Element)
    embeds_one(:servicedPeriod, Fhir.Period)
    embeds_many(:encounter, Fhir.Reference)
    embeds_many(:_noteNumber, Fhir.Element)
    embeds_many(:detail, Fhir.ExplanationOfBenefitDetail)
    embeds_one(:locationReference, Fhir.Reference)
    embeds_many(:bodySite, Fhir.ExplanationOfBenefitBodySite)
    embeds_one(:unitPrice, Fhir.Money)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:adjudication, Fhir.ExplanationOfBenefitAdjudication)
    embeds_one(:net, Fhir.Money)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_many(:_diagnosisSequence, Fhir.Element)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_many(:request, Fhir.Reference)
    embeds_one(:locationCodeableConcept, Fhir.CodeableConcept)
    embeds_many(:_procedureSequence, Fhir.Element)
    embeds_one(:tax, Fhir.Money)
    embeds_one(:productOrService, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          sequence: float(),
          informationSequence: String.t(),
          factor: float(),
          procedureSequence: String.t(),
          servicedDate: String.t(),
          careTeamSequence: String.t(),
          noteNumber: String.t(),
          diagnosisSequence: String.t(),
          id: String.t(),
          _informationSequence: [Fhir.Element.t()],
          extension: [Fhir.Extension.t()],
          revenue: Fhir.CodeableConcept.t(),
          patientPaid: Fhir.Money.t(),
          _factor: Fhir.Element.t(),
          traceNumber: [Fhir.Identifier.t()],
          modifier: [Fhir.CodeableConcept.t()],
          reviewOutcome: Fhir.ExplanationOfBenefitReviewOutcome.t(),
          programCode: [Fhir.CodeableConcept.t()],
          udi: [Fhir.Reference.t()],
          _servicedDate: Fhir.Element.t(),
          _careTeamSequence: [Fhir.Element.t()],
          locationAddress: Fhir.Address.t(),
          productOrServiceEnd: Fhir.CodeableConcept.t(),
          _sequence: Fhir.Element.t(),
          servicedPeriod: Fhir.Period.t(),
          encounter: [Fhir.Reference.t()],
          _noteNumber: [Fhir.Element.t()],
          detail: [Fhir.ExplanationOfBenefitDetail.t()],
          locationReference: Fhir.Reference.t(),
          bodySite: [Fhir.ExplanationOfBenefitBodySite.t()],
          unitPrice: Fhir.Money.t(),
          modifierExtension: [Fhir.Extension.t()],
          adjudication: [Fhir.ExplanationOfBenefitAdjudication.t()],
          net: Fhir.Money.t(),
          category: Fhir.CodeableConcept.t(),
          _diagnosisSequence: [Fhir.Element.t()],
          quantity: Fhir.Quantity.t(),
          request: [Fhir.Reference.t()],
          locationCodeableConcept: Fhir.CodeableConcept.t(),
          _procedureSequence: [Fhir.Element.t()],
          tax: Fhir.Money.t(),
          productOrService: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :sequence,
      :informationSequence,
      :factor,
      :procedureSequence,
      :servicedDate,
      :careTeamSequence,
      :noteNumber,
      :diagnosisSequence,
      :id
    ])
    |> cast_embed(:_informationSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:revenue, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:patientPaid, with: &Fhir.Money.changeset/2)
    |> cast_embed(:_factor, with: &Fhir.Element.changeset/2)
    |> cast_embed(:traceNumber, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:reviewOutcome, with: &Fhir.ExplanationOfBenefitReviewOutcome.changeset/2)
    |> cast_embed(:programCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:udi, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_servicedDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_careTeamSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:locationAddress, with: &Fhir.Address.changeset/2)
    |> cast_embed(:productOrServiceEnd, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:servicedPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_noteNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:detail, with: &Fhir.ExplanationOfBenefitDetail.changeset/2)
    |> cast_embed(:locationReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.ExplanationOfBenefitBodySite.changeset/2)
    |> cast_embed(:unitPrice, with: &Fhir.Money.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:adjudication, with: &Fhir.ExplanationOfBenefitAdjudication.changeset/2)
    |> cast_embed(:net, with: &Fhir.Money.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_diagnosisSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:request, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:locationCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_procedureSequence, with: &Fhir.Element.changeset/2)
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
