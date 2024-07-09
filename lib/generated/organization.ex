defmodule Fhir.Organization do
  @moduledoc """
  A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action.  Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:active, :boolean)
    field(:alias, :string)
    field(:description, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:name, :string)
    field(:resourceType, :string, default: "Organization")
    embeds_one(:_active, Fhir.Element)
    embeds_many(:_alias, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:contact, Fhir.ExtendedContactDetail)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:endpoint, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:partOf, Fhir.Reference)
    embeds_many(:qualification, Fhir.OrganizationQualification)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          active: boolean(),
          alias: String.t(),
          description: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          name: String.t(),
          resourceType: String.t(),
          _active: Fhir.Element.t(),
          _alias: [Fhir.Element.t()],
          _description: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          contact: [Fhir.ExtendedContactDetail.t()],
          contained: [Fhir.ResourceList.t()],
          endpoint: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          partOf: Fhir.Reference.t(),
          qualification: [Fhir.OrganizationQualification.t()],
          text: Fhir.Narrative.t(),
          type: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :active,
      :alias,
      :description,
      :id,
      :implicitRules,
      :language,
      :name,
      :resourceType
    ])
    |> cast_embed(:_active, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_alias, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ExtendedContactDetail.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:endpoint, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:qualification, with: &Fhir.OrganizationQualification.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_inclusion(:active, [true, false])
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
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
