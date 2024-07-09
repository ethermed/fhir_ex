defmodule Fhir.PractitionerRole do
  @moduledoc """
  A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period of time.
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
    field(:resourceType, :string, default: "PractitionerRole")
    embeds_one(:_active, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:availability, Fhir.Availability)
    embeds_many(:characteristic, Fhir.CodeableConcept)
    embeds_many(:code, Fhir.CodeableConcept)
    embeds_many(:communication, Fhir.CodeableConcept)
    embeds_many(:contact, Fhir.ExtendedContactDetail)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:endpoint, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:healthcareService, Fhir.Reference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:location, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:organization, Fhir.Reference)
    embeds_one(:period, Fhir.Period)
    embeds_one(:practitioner, Fhir.Reference)
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
          availability: [Fhir.Availability.t()],
          characteristic: [Fhir.CodeableConcept.t()],
          code: [Fhir.CodeableConcept.t()],
          communication: [Fhir.CodeableConcept.t()],
          contact: [Fhir.ExtendedContactDetail.t()],
          contained: [Fhir.ResourceList.t()],
          endpoint: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          healthcareService: [Fhir.Reference.t()],
          identifier: [Fhir.Identifier.t()],
          location: [Fhir.Reference.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          organization: Fhir.Reference.t(),
          period: Fhir.Period.t(),
          practitioner: Fhir.Reference.t(),
          specialty: [Fhir.CodeableConcept.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:active, :id, :implicitRules, :language, :resourceType])
    |> cast_embed(:_active, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:availability, with: &Fhir.Availability.changeset/2)
    |> cast_embed(:characteristic, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:communication, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ExtendedContactDetail.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:endpoint, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:healthcareService, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:organization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:practitioner, with: &Fhir.Reference.changeset/2)
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
