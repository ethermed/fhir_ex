defmodule Fhir.SpecimenDefinitionContainer do
  @moduledoc """
  A kind of specimen with associated set of requirements.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:minimumVolumeString, :string)
    field(:preparation, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_minimumVolumeString, Fhir.Element)
    embeds_one(:_preparation, Fhir.Element)
    embeds_many(:additive, Fhir.SpecimenDefinitionAdditive)
    embeds_one(:cap, Fhir.CodeableConcept)
    embeds_one(:capacity, Fhir.Quantity)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:material, Fhir.CodeableConcept)
    embeds_one(:minimumVolumeQuantity, Fhir.Quantity)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          minimumVolumeString: String.t(),
          preparation: String.t(),
          _description: Fhir.Element.t(),
          _minimumVolumeString: Fhir.Element.t(),
          _preparation: Fhir.Element.t(),
          additive: [Fhir.SpecimenDefinitionAdditive.t()],
          cap: Fhir.CodeableConcept.t(),
          capacity: Fhir.Quantity.t(),
          extension: [Fhir.Extension.t()],
          material: Fhir.CodeableConcept.t(),
          minimumVolumeQuantity: Fhir.Quantity.t(),
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :minimumVolumeString, :preparation])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_minimumVolumeString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_preparation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:additive, with: &Fhir.SpecimenDefinitionAdditive.changeset/2)
    |> cast_embed(:cap, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:capacity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:material, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:minimumVolumeQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:preparation, ~r/^^[\s\S]+$$/)
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
