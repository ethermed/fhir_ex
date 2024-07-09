defmodule Fhir.ManufacturedItemDefinition do
  @moduledoc """
  The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a packaged medicinal product.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:name, :string)
    field(:resourceType, :string, default: "ManufacturedItemDefinition")
    field(:status, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:component, Fhir.ManufacturedItemDefinitionComponent)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:ingredient, Fhir.CodeableConcept)
    embeds_one(:manufacturedDoseForm, Fhir.CodeableConcept)
    embeds_many(:manufacturer, Fhir.Reference)
    embeds_many(:marketingStatus, Fhir.MarketingStatus)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:property, Fhir.ManufacturedItemDefinitionProperty)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:unitOfPresentation, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          name: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          component: [Fhir.ManufacturedItemDefinitionComponent.t()],
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          ingredient: [Fhir.CodeableConcept.t()],
          manufacturedDoseForm: Fhir.CodeableConcept.t(),
          manufacturer: [Fhir.Reference.t()],
          marketingStatus: [Fhir.MarketingStatus.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          property: [Fhir.ManufacturedItemDefinitionProperty.t()],
          text: Fhir.Narrative.t(),
          unitOfPresentation: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :implicitRules, :language, :name, :resourceType, :status])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:component, with: &Fhir.ManufacturedItemDefinitionComponent.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:ingredient, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:manufacturedDoseForm, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:manufacturer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:marketingStatus, with: &Fhir.MarketingStatus.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:property, with: &Fhir.ManufacturedItemDefinitionProperty.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:unitOfPresentation, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
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
