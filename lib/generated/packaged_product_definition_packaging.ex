defmodule Fhir.PackagedProductDefinitionPackaging do
  @moduledoc """
  A medically related item or items, in a container or package.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:componentPart, :boolean)
    field(:id, :string)
    field(:quantity, :float)
    embeds_one(:_componentPart, Fhir.Element)
    embeds_one(:_quantity, Fhir.Element)
    embeds_many(:alternateMaterial, Fhir.CodeableConcept)
    embeds_many(:containedItem, Fhir.PackagedProductDefinitionContainedItem)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:manufacturer, Fhir.Reference)
    embeds_many(:material, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:packaging, Fhir.PackagedProductDefinitionPackaging)
    embeds_many(:property, Fhir.PackagedProductDefinitionProperty)
    embeds_many(:shelfLifeStorage, Fhir.ProductShelfLife)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          componentPart: boolean(),
          id: String.t(),
          quantity: float(),
          _componentPart: Fhir.Element.t(),
          _quantity: Fhir.Element.t(),
          alternateMaterial: [Fhir.CodeableConcept.t()],
          containedItem: [Fhir.PackagedProductDefinitionContainedItem.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          manufacturer: [Fhir.Reference.t()],
          material: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          packaging: [Fhir.PackagedProductDefinitionPackaging.t()],
          property: [Fhir.PackagedProductDefinitionProperty.t()],
          shelfLifeStorage: [Fhir.ProductShelfLife.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:componentPart, :id, :quantity])
    |> cast_embed(:_componentPart, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_quantity, with: &Fhir.Element.changeset/2)
    |> cast_embed(:alternateMaterial, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:containedItem, with: &Fhir.PackagedProductDefinitionContainedItem.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:manufacturer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:material, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:packaging, with: &Fhir.PackagedProductDefinitionPackaging.changeset/2)
    |> cast_embed(:property, with: &Fhir.PackagedProductDefinitionProperty.changeset/2)
    |> cast_embed(:shelfLifeStorage, with: &Fhir.ProductShelfLife.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_inclusion(:componentPart, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:quantity, ~r/^[0]|[-+]?[1-9][0-9]*$/)
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
