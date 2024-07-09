defmodule Fhir.Endpoint do
  @moduledoc """
  The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b, a REST endpoint for another FHIR server, or a s/Mime email address. This may include any security context information.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:address, :string)
    field(:description, :string)
    field(:header, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:name, :string)
    field(:resourceType, :string, default: "Endpoint")
    field(:status, :string)
    embeds_one(:_address, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:_header, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:connectionType, Fhir.CodeableConcept)
    embeds_many(:contact, Fhir.ContactPoint)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:environmentType, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:managingOrganization, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:payload, Fhir.EndpointPayload)
    embeds_one(:period, Fhir.Period)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          address: String.t(),
          description: String.t(),
          header: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          name: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _address: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _header: [Fhir.Element.t()],
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          connectionType: [Fhir.CodeableConcept.t()],
          contact: [Fhir.ContactPoint.t()],
          contained: [Fhir.ResourceList.t()],
          environmentType: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          managingOrganization: Fhir.Reference.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          payload: [Fhir.EndpointPayload.t()],
          period: Fhir.Period.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :address,
      :description,
      :header,
      :id,
      :implicitRules,
      :language,
      :name,
      :resourceType,
      :status
    ])
    |> cast_embed(:_address, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_header, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:connectionType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactPoint.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:environmentType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:managingOrganization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:payload, with: &Fhir.EndpointPayload.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:address, ~r/^\S*$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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
