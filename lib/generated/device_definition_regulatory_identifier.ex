defmodule Fhir.DeviceDefinitionRegulatoryIdentifier do
  @moduledoc """
  The characteristics, operational status and capabilities of a medical-related component of a medical device.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:deviceIdentifier, :string)
    field(:id, :string)
    field(:issuer, :string)
    field(:jurisdiction, :string)
    field(:type, :string)
    embeds_one(:_deviceIdentifier, Fhir.Element)
    embeds_one(:_issuer, Fhir.Element)
    embeds_one(:_jurisdiction, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          deviceIdentifier: String.t(),
          id: String.t(),
          issuer: String.t(),
          jurisdiction: String.t(),
          type: String.t(),
          _deviceIdentifier: Fhir.Element.t(),
          _issuer: Fhir.Element.t(),
          _jurisdiction: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:deviceIdentifier, :id, :issuer, :jurisdiction, :type])
    |> cast_embed(:_deviceIdentifier, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_issuer, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_jurisdiction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:deviceIdentifier, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:issuer, ~r/^\S*$/)
    |> validate_format(:jurisdiction, ~r/^\S*$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
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
