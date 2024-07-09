defmodule Fhir.ManufacturedItemDefinitionProperty do
  @moduledoc """
  The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a packaged medicinal product.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:valueBoolean, :boolean)
    field(:valueDate, :string)
    field(:valueMarkdown, :string)
    embeds_one(:_valueBoolean, Fhir.Element)
    embeds_one(:_valueDate, Fhir.Element)
    embeds_one(:_valueMarkdown, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:valueAttachment, Fhir.Attachment)
    embeds_one(:valueCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:valueQuantity, Fhir.Quantity)
    embeds_one(:valueReference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          valueBoolean: boolean(),
          valueDate: String.t(),
          valueMarkdown: String.t(),
          _valueBoolean: Fhir.Element.t(),
          _valueDate: Fhir.Element.t(),
          _valueMarkdown: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t(),
          valueAttachment: Fhir.Attachment.t(),
          valueCodeableConcept: Fhir.CodeableConcept.t(),
          valueQuantity: Fhir.Quantity.t(),
          valueReference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :valueBoolean, :valueDate, :valueMarkdown])
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueMarkdown, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valueAttachment, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:valueCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valueQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:valueReference, with: &Fhir.Reference.changeset/2)
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
