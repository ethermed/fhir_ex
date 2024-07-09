defmodule Fhir.Device do
  @moduledoc """
  A type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:displayName, :string)
    field(:manufactureDate, :string)
    field(:serialNumber, :string)
    field(:manufacturer, :string)
    field(:language, :string)
    field(:modelNumber, :string)
    field(:resourceType, :string, default: "Device")
    field(:partNumber, :string)
    field(:url, :string)
    field(:expirationDate, :string)
    field(:implicitRules, :string)
    field(:lotNumber, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:name, Fhir.DeviceName)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:_displayName, Fhir.Element)
    embeds_one(:_manufacturer, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_expirationDate, Fhir.Element)
    embeds_one(:_modelNumber, Fhir.Element)
    embeds_one(:availabilityStatus, Fhir.CodeableConcept)
    embeds_one(:_lotNumber, Fhir.Element)
    embeds_one(:_url, Fhir.Element)
    embeds_one(:_serialNumber, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:conformsTo, Fhir.DeviceConformsTo)
    embeds_many(:gateway, Fhir.CodeableReference)
    embeds_one(:cycle, Fhir.Count)
    embeds_one(:mode, Fhir.CodeableConcept)
    embeds_one(:_partNumber, Fhir.Element)
    embeds_one(:location, Fhir.Reference)
    embeds_many(:version, Fhir.DeviceVersion)
    embeds_many(:udiCarrier, Fhir.DeviceUdiCarrier)
    embeds_many(:contact, Fhir.ContactPoint)
    embeds_many(:endpoint, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_manufactureDate, Fhir.Element)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:duration, Fhir.Duration)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:property, Fhir.DeviceProperty)
    embeds_one(:definition, Fhir.CodeableReference)
    embeds_many(:type, Fhir.CodeableConcept)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_many(:safety, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:parent, Fhir.Reference)
    embeds_one(:biologicalSourceEvent, Fhir.Identifier)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:owner, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          displayName: String.t(),
          manufactureDate: String.t(),
          serialNumber: String.t(),
          manufacturer: String.t(),
          language: String.t(),
          modelNumber: String.t(),
          resourceType: String.t(),
          partNumber: String.t(),
          url: String.t(),
          expirationDate: String.t(),
          implicitRules: String.t(),
          lotNumber: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          name: [Fhir.DeviceName.t()],
          extension: [Fhir.Extension.t()],
          _displayName: Fhir.Element.t(),
          _manufacturer: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          _expirationDate: Fhir.Element.t(),
          _modelNumber: Fhir.Element.t(),
          availabilityStatus: Fhir.CodeableConcept.t(),
          _lotNumber: Fhir.Element.t(),
          _url: Fhir.Element.t(),
          _serialNumber: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          conformsTo: [Fhir.DeviceConformsTo.t()],
          gateway: [Fhir.CodeableReference.t()],
          cycle: Fhir.Count.t(),
          mode: Fhir.CodeableConcept.t(),
          _partNumber: Fhir.Element.t(),
          location: Fhir.Reference.t(),
          version: [Fhir.DeviceVersion.t()],
          udiCarrier: [Fhir.DeviceUdiCarrier.t()],
          contact: [Fhir.ContactPoint.t()],
          endpoint: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          _manufactureDate: Fhir.Element.t(),
          meta: Fhir.Meta.t(),
          duration: Fhir.Duration.t(),
          identifier: [Fhir.Identifier.t()],
          property: [Fhir.DeviceProperty.t()],
          definition: Fhir.CodeableReference.t(),
          type: [Fhir.CodeableConcept.t()],
          category: [Fhir.CodeableConcept.t()],
          safety: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          parent: Fhir.Reference.t(),
          biologicalSourceEvent: Fhir.Identifier.t(),
          note: [Fhir.Annotation.t()],
          owner: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :displayName,
      :manufactureDate,
      :serialNumber,
      :manufacturer,
      :language,
      :modelNumber,
      :resourceType,
      :partNumber,
      :url,
      :expirationDate,
      :implicitRules,
      :lotNumber,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:name, with: &Fhir.DeviceName.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_displayName, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_manufacturer, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_expirationDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_modelNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:availabilityStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_lotNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_serialNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:conformsTo, with: &Fhir.DeviceConformsTo.changeset/2)
    |> cast_embed(:gateway, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:cycle, with: &Fhir.Count.changeset/2)
    |> cast_embed(:mode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_partNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:version, with: &Fhir.DeviceVersion.changeset/2)
    |> cast_embed(:udiCarrier, with: &Fhir.DeviceUdiCarrier.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactPoint.changeset/2)
    |> cast_embed(:endpoint, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_manufactureDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:duration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:property, with: &Fhir.DeviceProperty.changeset/2)
    |> cast_embed(:definition, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:safety, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:parent, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:biologicalSourceEvent, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:owner, with: &Fhir.Reference.changeset/2)
    |> validate_format(:displayName, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :manufactureDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:serialNumber, ~r/^^[\s\S]+$$/)
    |> validate_format(:manufacturer, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:modelNumber, ~r/^^[\s\S]+$$/)
    |> validate_format(:partNumber, ~r/^^[\s\S]+$$/)
    |> validate_format(:url, ~r/^\S*$/)
    |> validate_format(
      :expirationDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:lotNumber, ~r/^^[\s\S]+$$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
