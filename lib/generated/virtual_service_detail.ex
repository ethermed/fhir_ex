defmodule Fhir.VirtualServiceDetail do
  @moduledoc """
  Virtual Service Contact Details.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:additionalInfo, :string)
    field(:addressString, :string)
    field(:addressUrl, :string)
    field(:id, :string)
    field(:maxParticipants, :float)
    field(:sessionKey, :string)
    embeds_many(:_additionalInfo, Fhir.Element)
    embeds_one(:_addressString, Fhir.Element)
    embeds_one(:_addressUrl, Fhir.Element)
    embeds_one(:_maxParticipants, Fhir.Element)
    embeds_one(:_sessionKey, Fhir.Element)
    embeds_one(:addressContactPoint, Fhir.ContactPoint)
    embeds_one(:addressExtendedContactDetail, Fhir.ExtendedContactDetail)
    embeds_one(:channelType, Fhir.Coding)
    embeds_many(:extension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          additionalInfo: String.t(),
          addressString: String.t(),
          addressUrl: String.t(),
          id: String.t(),
          maxParticipants: float(),
          sessionKey: String.t(),
          _additionalInfo: [Fhir.Element.t()],
          _addressString: Fhir.Element.t(),
          _addressUrl: Fhir.Element.t(),
          _maxParticipants: Fhir.Element.t(),
          _sessionKey: Fhir.Element.t(),
          addressContactPoint: Fhir.ContactPoint.t(),
          addressExtendedContactDetail: Fhir.ExtendedContactDetail.t(),
          channelType: Fhir.Coding.t(),
          extension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :additionalInfo,
      :addressString,
      :addressUrl,
      :id,
      :maxParticipants,
      :sessionKey
    ])
    |> cast_embed(:_additionalInfo, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_addressString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_addressUrl, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_maxParticipants, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sessionKey, with: &Fhir.Element.changeset/2)
    |> cast_embed(:addressContactPoint, with: &Fhir.ContactPoint.changeset/2)
    |> cast_embed(:addressExtendedContactDetail, with: &Fhir.ExtendedContactDetail.changeset/2)
    |> cast_embed(:channelType, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:sessionKey, ~r/^^[\s\S]+$$/)
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
