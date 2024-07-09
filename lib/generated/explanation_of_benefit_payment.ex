defmodule Fhir.ExplanationOfBenefitPayment do
  @moduledoc """
  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:id, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:adjustment, Fhir.Money)
    embeds_one(:adjustmentReason, Fhir.CodeableConcept)
    embeds_one(:amount, Fhir.Money)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          id: String.t(),
          _date: Fhir.Element.t(),
          adjustment: Fhir.Money.t(),
          adjustmentReason: Fhir.CodeableConcept.t(),
          amount: Fhir.Money.t(),
          extension: [Fhir.Extension.t()],
          identifier: Fhir.Identifier.t(),
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:date, :id])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:adjustment, with: &Fhir.Money.changeset/2)
    |> cast_embed(:adjustmentReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:amount, with: &Fhir.Money.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
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
