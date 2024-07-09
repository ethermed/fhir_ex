defmodule Fhir.DeviceDefinitionPackaging do
  @moduledoc """
  The characteristics, operational status and capabilities of a medical-related component of a medical device.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:count, :float)
    field(:id, :string)
    embeds_one(:_count, Fhir.Element)
    embeds_many(:distributor, Fhir.DeviceDefinitionDistributor)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:packaging, Fhir.DeviceDefinitionPackaging)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_many(:udiDeviceIdentifier, Fhir.DeviceDefinitionUdiDeviceIdentifier)
  end

  @type t :: %__MODULE__{
          count: float(),
          id: String.t(),
          _count: Fhir.Element.t(),
          distributor: [Fhir.DeviceDefinitionDistributor.t()],
          extension: [Fhir.Extension.t()],
          identifier: Fhir.Identifier.t(),
          modifierExtension: [Fhir.Extension.t()],
          packaging: [Fhir.DeviceDefinitionPackaging.t()],
          type: Fhir.CodeableConcept.t(),
          udiDeviceIdentifier: [Fhir.DeviceDefinitionUdiDeviceIdentifier.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:count, :id])
    |> cast_embed(:_count, with: &Fhir.Element.changeset/2)
    |> cast_embed(:distributor, with: &Fhir.DeviceDefinitionDistributor.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:packaging, with: &Fhir.DeviceDefinitionPackaging.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:udiDeviceIdentifier,
      with: &Fhir.DeviceDefinitionUdiDeviceIdentifier.changeset/2
    )
    |> validate_format(:count, ~r/^[0]|[-+]?[1-9][0-9]*$/)
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
