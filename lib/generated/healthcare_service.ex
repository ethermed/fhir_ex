defmodule Fhir.HealthcareService do
  @moduledoc """
  The details of a healthcare service available at a location.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:name, :string)
    field(:appointmentRequired, :boolean)
    field(:active, :boolean)
    field(:comment, :string)
    field(:extraDetails, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "HealthcareService")
    field(:implicitRules, :string)
    field(:id, :string)
    embeds_one(:photo, Fhir.Attachment)
    embeds_many(:communication, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:referralMethod, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:characteristic, Fhir.CodeableConcept)
    embeds_one(:_extraDetails, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:coverageArea, Fhir.Reference)
    embeds_many(:program, Fhir.CodeableConcept)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_appointmentRequired, Fhir.Element)
    embeds_one(:_active, Fhir.Element)
    embeds_one(:_comment, Fhir.Element)
    embeds_many(:location, Fhir.Reference)
    embeds_many(:contact, Fhir.ExtendedContactDetail)
    embeds_many(:offeredIn, Fhir.Reference)
    embeds_one(:providedBy, Fhir.Reference)
    embeds_many(:endpoint, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:eligibility, Fhir.HealthcareServiceEligibility)
    embeds_many(:serviceProvisionCode, Fhir.CodeableConcept)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:type, Fhir.CodeableConcept)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:specialty, Fhir.CodeableConcept)
    embeds_many(:availability, Fhir.Availability)
  end

  @type t :: %__MODULE__{
          name: String.t(),
          appointmentRequired: boolean(),
          active: boolean(),
          comment: String.t(),
          extraDetails: String.t(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          id: String.t(),
          photo: Fhir.Attachment.t(),
          communication: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          referralMethod: [Fhir.CodeableConcept.t()],
          contained: [Fhir.ResourceList.t()],
          characteristic: [Fhir.CodeableConcept.t()],
          _extraDetails: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          coverageArea: [Fhir.Reference.t()],
          program: [Fhir.CodeableConcept.t()],
          _name: Fhir.Element.t(),
          _appointmentRequired: Fhir.Element.t(),
          _active: Fhir.Element.t(),
          _comment: Fhir.Element.t(),
          location: [Fhir.Reference.t()],
          contact: [Fhir.ExtendedContactDetail.t()],
          offeredIn: [Fhir.Reference.t()],
          providedBy: Fhir.Reference.t(),
          endpoint: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          eligibility: [Fhir.HealthcareServiceEligibility.t()],
          serviceProvisionCode: [Fhir.CodeableConcept.t()],
          identifier: [Fhir.Identifier.t()],
          type: [Fhir.CodeableConcept.t()],
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          specialty: [Fhir.CodeableConcept.t()],
          availability: [Fhir.Availability.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :name,
      :appointmentRequired,
      :active,
      :comment,
      :extraDetails,
      :language,
      :resourceType,
      :implicitRules,
      :id
    ])
    |> cast_embed(:photo, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:communication, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:referralMethod, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:characteristic, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_extraDetails, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:coverageArea, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:program, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_appointmentRequired, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_active, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_comment, with: &Fhir.Element.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ExtendedContactDetail.changeset/2)
    |> cast_embed(:offeredIn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:providedBy, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:endpoint, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:eligibility, with: &Fhir.HealthcareServiceEligibility.changeset/2)
    |> cast_embed(:serviceProvisionCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:specialty, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:availability, with: &Fhir.Availability.changeset/2)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:appointmentRequired, [true, false])
    |> validate_inclusion(:active, [true, false])
    |> validate_format(:comment, ~r/^^[\s\S]+$$/)
    |> validate_format(:extraDetails, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
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
