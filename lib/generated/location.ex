defmodule Fhir.Location do
  @moduledoc """
  Details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:name, :string)
    field(:description, :string)
    field(:mode, :string)
    field(:language, :string)
    field(:alias, :string)
    field(:resourceType, :string, default: "Location")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:form, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:characteristic, Fhir.CodeableConcept)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:position, Fhir.LocationPosition)
    embeds_one(:_mode, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:managingOrganization, Fhir.Reference)
    embeds_many(:virtualService, Fhir.VirtualServiceDetail)
    embeds_many(:contact, Fhir.ExtendedContactDetail)
    embeds_many(:endpoint, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:operationalStatus, Fhir.Coding)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:partOf, Fhir.Reference)
    embeds_many(:type, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:_alias, Fhir.Element)
    embeds_one(:address, Fhir.Address)
    embeds_many(:hoursOfOperation, Fhir.Availability)
  end

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          mode: String.t(),
          language: String.t(),
          alias: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          form: Fhir.CodeableConcept.t(),
          contained: [Fhir.ResourceList.t()],
          characteristic: [Fhir.CodeableConcept.t()],
          _implicitRules: Fhir.Element.t(),
          position: Fhir.LocationPosition.t(),
          _mode: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          managingOrganization: Fhir.Reference.t(),
          virtualService: [Fhir.VirtualServiceDetail.t()],
          contact: [Fhir.ExtendedContactDetail.t()],
          endpoint: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          operationalStatus: Fhir.Coding.t(),
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          partOf: Fhir.Reference.t(),
          type: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          _alias: [Fhir.Element.t()],
          address: Fhir.Address.t(),
          hoursOfOperation: [Fhir.Availability.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :name,
      :description,
      :mode,
      :language,
      :alias,
      :resourceType,
      :implicitRules,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:form, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:characteristic, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:position, with: &Fhir.LocationPosition.changeset/2)
    |> cast_embed(:_mode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:managingOrganization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:virtualService, with: &Fhir.VirtualServiceDetail.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ExtendedContactDetail.changeset/2)
    |> cast_embed(:endpoint, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:operationalStatus, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_alias, with: &Fhir.Element.changeset/2)
    |> cast_embed(:address, with: &Fhir.Address.changeset/2)
    |> cast_embed(:hoursOfOperation, with: &Fhir.Availability.changeset/2)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:mode, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
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
