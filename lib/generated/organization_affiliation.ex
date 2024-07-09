defmodule Fhir.OrganizationAffiliation do
  @moduledoc """
  Defines an affiliation/association/relationship between 2 distinct organizations, that is not a part-of relationship/sub-division relationship.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:active, :boolean)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "OrganizationAffiliation")
    embeds_one(:_active, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:code, Fhir.CodeableConcept)
    embeds_many(:contact, Fhir.ExtendedContactDetail)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:endpoint, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:healthcareService, Fhir.Reference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:location, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:network, Fhir.Reference)
    embeds_one(:organization, Fhir.Reference)
    embeds_one(:participatingOrganization, Fhir.Reference)
    embeds_one(:period, Fhir.Period)
    embeds_many(:specialty, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          active: boolean(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          _active: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          code: [Fhir.CodeableConcept.t()],
          contact: [Fhir.ExtendedContactDetail.t()],
          contained: [Fhir.ResourceList.t()],
          endpoint: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          healthcareService: [Fhir.Reference.t()],
          identifier: [Fhir.Identifier.t()],
          location: [Fhir.Reference.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          network: [Fhir.Reference.t()],
          organization: Fhir.Reference.t(),
          participatingOrganization: Fhir.Reference.t(),
          period: Fhir.Period.t(),
          specialty: [Fhir.CodeableConcept.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:active, :id, :implicitRules, :language, :resourceType])
    |> cast_embed(:_active, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ExtendedContactDetail.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:endpoint, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:healthcareService, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:network, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:organization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:participatingOrganization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:specialty, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_inclusion(:active, [true, false])
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
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
