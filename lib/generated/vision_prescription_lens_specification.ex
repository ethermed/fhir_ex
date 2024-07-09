defmodule Fhir.VisionPrescriptionLensSpecification do
  @moduledoc """
  An authorization for the provision of glasses and/or contact lenses to a patient.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:add, :float)
    field(:axis, :float)
    field(:backCurve, :float)
    field(:brand, :string)
    field(:color, :string)
    field(:cylinder, :float)
    field(:diameter, :float)
    field(:eye, :string)
    field(:id, :string)
    field(:power, :float)
    field(:sphere, :float)
    embeds_one(:_add, Fhir.Element)
    embeds_one(:_axis, Fhir.Element)
    embeds_one(:_backCurve, Fhir.Element)
    embeds_one(:_brand, Fhir.Element)
    embeds_one(:_color, Fhir.Element)
    embeds_one(:_cylinder, Fhir.Element)
    embeds_one(:_diameter, Fhir.Element)
    embeds_one(:_eye, Fhir.Element)
    embeds_one(:_power, Fhir.Element)
    embeds_one(:_sphere, Fhir.Element)
    embeds_one(:duration, Fhir.Quantity)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_many(:prism, Fhir.VisionPrescriptionPrism)
    embeds_one(:product, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          add: float(),
          axis: float(),
          backCurve: float(),
          brand: String.t(),
          color: String.t(),
          cylinder: float(),
          diameter: float(),
          eye: String.t(),
          id: String.t(),
          power: float(),
          sphere: float(),
          _add: Fhir.Element.t(),
          _axis: Fhir.Element.t(),
          _backCurve: Fhir.Element.t(),
          _brand: Fhir.Element.t(),
          _color: Fhir.Element.t(),
          _cylinder: Fhir.Element.t(),
          _diameter: Fhir.Element.t(),
          _eye: Fhir.Element.t(),
          _power: Fhir.Element.t(),
          _sphere: Fhir.Element.t(),
          duration: Fhir.Quantity.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          prism: [Fhir.VisionPrescriptionPrism.t()],
          product: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :add,
      :axis,
      :backCurve,
      :brand,
      :color,
      :cylinder,
      :diameter,
      :eye,
      :id,
      :power,
      :sphere
    ])
    |> cast_embed(:_add, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_axis, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_backCurve, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_brand, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_color, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_cylinder, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_diameter, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_eye, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_power, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sphere, with: &Fhir.Element.changeset/2)
    |> cast_embed(:duration, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:prism, with: &Fhir.VisionPrescriptionPrism.changeset/2)
    |> cast_embed(:product, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:axis, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:brand, ~r/^^[\s\S]+$$/)
    |> validate_format(:color, ~r/^^[\s\S]+$$/)
    |> validate_format(:eye, ~r/^[^\s]+( [^\s]+)*$/)
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
