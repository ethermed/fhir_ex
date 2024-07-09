defmodule Fhir.DeviceUdiCarrier do
  @moduledoc """
  A type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:carrierAIDC, :string)
    field(:carrierHRF, :string)
    field(:deviceIdentifier, :string)
    field(:entryType, :string)
    field(:id, :string)
    field(:issuer, :string)
    field(:jurisdiction, :string)
    embeds_one(:_carrierAIDC, Fhir.Element)
    embeds_one(:_carrierHRF, Fhir.Element)
    embeds_one(:_deviceIdentifier, Fhir.Element)
    embeds_one(:_entryType, Fhir.Element)
    embeds_one(:_issuer, Fhir.Element)
    embeds_one(:_jurisdiction, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          carrierAIDC: String.t(),
          carrierHRF: String.t(),
          deviceIdentifier: String.t(),
          entryType: String.t(),
          id: String.t(),
          issuer: String.t(),
          jurisdiction: String.t(),
          _carrierAIDC: Fhir.Element.t(),
          _carrierHRF: Fhir.Element.t(),
          _deviceIdentifier: Fhir.Element.t(),
          _entryType: Fhir.Element.t(),
          _issuer: Fhir.Element.t(),
          _jurisdiction: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :carrierAIDC,
      :carrierHRF,
      :deviceIdentifier,
      :entryType,
      :id,
      :issuer,
      :jurisdiction
    ])
    |> cast_embed(:_carrierAIDC, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_carrierHRF, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_deviceIdentifier, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_entryType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_issuer, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_jurisdiction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:carrierHRF, ~r/^^[\s\S]+$$/)
    |> validate_format(:deviceIdentifier, ~r/^^[\s\S]+$$/)
    |> validate_format(:entryType, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:issuer, ~r/^\S*$/)
    |> validate_format(:jurisdiction, ~r/^\S*$/)
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
