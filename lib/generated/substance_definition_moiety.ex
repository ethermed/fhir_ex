defmodule Fhir.SubstanceDefinitionMoiety do
  @moduledoc """
  The detailed description of a substance, typically at a level beyond what is used for prescribing.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:amountString, :string)
    field(:id, :string)
    field(:molecularFormula, :string)
    field(:name, :string)
    embeds_one(:_amountString, Fhir.Element)
    embeds_one(:_molecularFormula, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:amountQuantity, Fhir.Quantity)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_one(:measurementType, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:opticalActivity, Fhir.CodeableConcept)
    embeds_one(:role, Fhir.CodeableConcept)
    embeds_one(:stereochemistry, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          amountString: String.t(),
          id: String.t(),
          molecularFormula: String.t(),
          name: String.t(),
          _amountString: Fhir.Element.t(),
          _molecularFormula: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          amountQuantity: Fhir.Quantity.t(),
          extension: [Fhir.Extension.t()],
          identifier: Fhir.Identifier.t(),
          measurementType: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          opticalActivity: Fhir.CodeableConcept.t(),
          role: Fhir.CodeableConcept.t(),
          stereochemistry: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:amountString, :id, :molecularFormula, :name])
    |> cast_embed(:_amountString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_molecularFormula, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:amountQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:measurementType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:opticalActivity, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:role, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:stereochemistry, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:molecularFormula, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
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
