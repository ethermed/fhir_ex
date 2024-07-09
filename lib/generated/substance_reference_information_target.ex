defmodule Fhir.SubstanceReferenceInformationTarget do
  @moduledoc """
  Todo.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:amountString, :string)
    field(:id, :string)
    embeds_one(:_amountString, Fhir.Element)
    embeds_one(:amountQuantity, Fhir.Quantity)
    embeds_one(:amountRange, Fhir.Range)
    embeds_one(:amountType, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:interaction, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:organism, Fhir.CodeableConcept)
    embeds_one(:organismType, Fhir.CodeableConcept)
    embeds_many(:source, Fhir.Reference)
    embeds_one(:target, Fhir.Identifier)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          amountString: String.t(),
          id: String.t(),
          _amountString: Fhir.Element.t(),
          amountQuantity: Fhir.Quantity.t(),
          amountRange: Fhir.Range.t(),
          amountType: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          interaction: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          organism: Fhir.CodeableConcept.t(),
          organismType: Fhir.CodeableConcept.t(),
          source: [Fhir.Reference.t()],
          target: Fhir.Identifier.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:amountString, :id])
    |> cast_embed(:_amountString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:amountQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:amountRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:amountType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:interaction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:organism, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:organismType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:source, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:target, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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
