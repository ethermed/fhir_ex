defmodule Fhir.ClaimSubDetail do
  @moduledoc """
  A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:factor, :float)
    field(:id, :string)
    field(:sequence, :float)
    embeds_one(:_factor, Fhir.Element)
    embeds_one(:_sequence, Fhir.Element)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifier, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:net, Fhir.Money)
    embeds_one(:patientPaid, Fhir.Money)
    embeds_one(:productOrService, Fhir.CodeableConcept)
    embeds_one(:productOrServiceEnd, Fhir.CodeableConcept)
    embeds_many(:programCode, Fhir.CodeableConcept)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_one(:revenue, Fhir.CodeableConcept)
    embeds_one(:tax, Fhir.Money)
    embeds_many(:traceNumber, Fhir.Identifier)
    embeds_many(:udi, Fhir.Reference)
    embeds_one(:unitPrice, Fhir.Money)
  end

  @type t :: %__MODULE__{
          factor: float(),
          id: String.t(),
          sequence: float(),
          _factor: Fhir.Element.t(),
          _sequence: Fhir.Element.t(),
          category: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifier: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          net: Fhir.Money.t(),
          patientPaid: Fhir.Money.t(),
          productOrService: Fhir.CodeableConcept.t(),
          productOrServiceEnd: Fhir.CodeableConcept.t(),
          programCode: [Fhir.CodeableConcept.t()],
          quantity: Fhir.Quantity.t(),
          revenue: Fhir.CodeableConcept.t(),
          tax: Fhir.Money.t(),
          traceNumber: [Fhir.Identifier.t()],
          udi: [Fhir.Reference.t()],
          unitPrice: Fhir.Money.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:factor, :id, :sequence])
    |> cast_embed(:_factor, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:net, with: &Fhir.Money.changeset/2)
    |> cast_embed(:patientPaid, with: &Fhir.Money.changeset/2)
    |> cast_embed(:productOrService, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:productOrServiceEnd, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:programCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:revenue, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:tax, with: &Fhir.Money.changeset/2)
    |> cast_embed(:traceNumber, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:udi, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:unitPrice, with: &Fhir.Money.changeset/2)
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
