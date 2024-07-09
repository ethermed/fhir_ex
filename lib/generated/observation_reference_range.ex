defmodule Fhir.ObservationReferenceRange do
  @moduledoc """
  Measurements and simple assertions made about a patient, device or other subject.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:text, :string)
    embeds_one(:_text, Fhir.Element)
    embeds_one(:age, Fhir.Range)
    embeds_many(:appliesTo, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:high, Fhir.Quantity)
    embeds_one(:low, Fhir.Quantity)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:normalValue, Fhir.CodeableConcept)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          text: String.t(),
          _text: Fhir.Element.t(),
          age: Fhir.Range.t(),
          appliesTo: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          high: Fhir.Quantity.t(),
          low: Fhir.Quantity.t(),
          modifierExtension: [Fhir.Extension.t()],
          normalValue: Fhir.CodeableConcept.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :text])
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:age, with: &Fhir.Range.changeset/2)
    |> cast_embed(:appliesTo, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:high, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:low, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:normalValue, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:text, ~r/^^[\s\S]+$$/)
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
