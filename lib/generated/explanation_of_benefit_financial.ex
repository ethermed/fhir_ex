defmodule Fhir.ExplanationOfBenefitFinancial do
  @moduledoc """
  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:allowedString, :string)
    field(:allowedUnsignedInt, :float)
    field(:id, :string)
    field(:usedUnsignedInt, :float)
    embeds_one(:_allowedString, Fhir.Element)
    embeds_one(:_allowedUnsignedInt, Fhir.Element)
    embeds_one(:_usedUnsignedInt, Fhir.Element)
    embeds_one(:allowedMoney, Fhir.Money)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:usedMoney, Fhir.Money)
  end

  @type t :: %__MODULE__{
          allowedString: String.t(),
          allowedUnsignedInt: float(),
          id: String.t(),
          usedUnsignedInt: float(),
          _allowedString: Fhir.Element.t(),
          _allowedUnsignedInt: Fhir.Element.t(),
          _usedUnsignedInt: Fhir.Element.t(),
          allowedMoney: Fhir.Money.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t(),
          usedMoney: Fhir.Money.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:allowedString, :allowedUnsignedInt, :id, :usedUnsignedInt])
    |> cast_embed(:_allowedString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_allowedUnsignedInt, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_usedUnsignedInt, with: &Fhir.Element.changeset/2)
    |> cast_embed(:allowedMoney, with: &Fhir.Money.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:usedMoney, with: &Fhir.Money.changeset/2)
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
