defmodule Fhir.MedicationKnowledgeDrugCharacteristic do
  @moduledoc """
  Information about a medication that is used to support knowledge.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:valueBase64Binary, :string)
    field(:valueString, :string)
    embeds_one(:_valueBase64Binary, Fhir.Element)
    embeds_one(:_valueString, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:valueAttachment, Fhir.Attachment)
    embeds_one(:valueCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:valueQuantity, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          valueBase64Binary: String.t(),
          valueString: String.t(),
          _valueBase64Binary: Fhir.Element.t(),
          _valueString: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t(),
          valueAttachment: Fhir.Attachment.t(),
          valueCodeableConcept: Fhir.CodeableConcept.t(),
          valueQuantity: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :valueBase64Binary, :valueString])
    |> cast_embed(:_valueBase64Binary, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valueAttachment, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:valueCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:valueQuantity, with: &Fhir.Quantity.changeset/2)
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
