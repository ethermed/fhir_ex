defmodule Fhir.ClaimResponseItem do
  @moduledoc """
  This resource provides the adjudication details from the processing of a Claim resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:itemSequence, :float)
    field(:noteNumber, :string)
    embeds_one(:_itemSequence, Fhir.Element)
    embeds_many(:_noteNumber, Fhir.Element)
    embeds_many(:adjudication, Fhir.ClaimResponseAdjudication)
    embeds_many(:detail, Fhir.ClaimResponseDetail)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:reviewOutcome, Fhir.ClaimResponseReviewOutcome)
    embeds_many(:traceNumber, Fhir.Identifier)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          itemSequence: float(),
          noteNumber: String.t(),
          _itemSequence: Fhir.Element.t(),
          _noteNumber: [Fhir.Element.t()],
          adjudication: [Fhir.ClaimResponseAdjudication.t()],
          detail: [Fhir.ClaimResponseDetail.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          reviewOutcome: Fhir.ClaimResponseReviewOutcome.t(),
          traceNumber: [Fhir.Identifier.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :itemSequence, :noteNumber])
    |> cast_embed(:_itemSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_noteNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:adjudication, with: &Fhir.ClaimResponseAdjudication.changeset/2)
    |> cast_embed(:detail, with: &Fhir.ClaimResponseDetail.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:reviewOutcome, with: &Fhir.ClaimResponseReviewOutcome.changeset/2)
    |> cast_embed(:traceNumber, with: &Fhir.Identifier.changeset/2)
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
