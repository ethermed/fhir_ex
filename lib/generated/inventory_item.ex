defmodule Fhir.InventoryItem do
  @moduledoc """
  A functional description of an inventory item used in inventory and supply-related workflows.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "InventoryItem")
    field(:status, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:association, Fhir.InventoryItemAssociation)
    embeds_one(:baseUnit, Fhir.CodeableConcept)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_many(:characteristic, Fhir.InventoryItemCharacteristic)
    embeds_many(:code, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:description, Fhir.InventoryItemDescription)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:instance, Fhir.InventoryItemInstance)
    embeds_many(:inventoryStatus, Fhir.CodeableConcept)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:name, Fhir.InventoryItemName)
    embeds_one(:netContent, Fhir.Quantity)
    embeds_one(:productReference, Fhir.Reference)
    embeds_many(:responsibleOrganization, Fhir.InventoryItemResponsibleOrganization)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          association: [Fhir.InventoryItemAssociation.t()],
          baseUnit: Fhir.CodeableConcept.t(),
          category: [Fhir.CodeableConcept.t()],
          characteristic: [Fhir.InventoryItemCharacteristic.t()],
          code: [Fhir.CodeableConcept.t()],
          contained: [Fhir.ResourceList.t()],
          description: Fhir.InventoryItemDescription.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          instance: Fhir.InventoryItemInstance.t(),
          inventoryStatus: [Fhir.CodeableConcept.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          name: [Fhir.InventoryItemName.t()],
          netContent: Fhir.Quantity.t(),
          productReference: Fhir.Reference.t(),
          responsibleOrganization: [Fhir.InventoryItemResponsibleOrganization.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :implicitRules, :language, :resourceType, :status])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:association, with: &Fhir.InventoryItemAssociation.changeset/2)
    |> cast_embed(:baseUnit, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:characteristic, with: &Fhir.InventoryItemCharacteristic.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:description, with: &Fhir.InventoryItemDescription.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:instance, with: &Fhir.InventoryItemInstance.changeset/2)
    |> cast_embed(:inventoryStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:name, with: &Fhir.InventoryItemName.changeset/2)
    |> cast_embed(:netContent, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:productReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:responsibleOrganization,
      with: &Fhir.InventoryItemResponsibleOrganization.changeset/2
    )
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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
