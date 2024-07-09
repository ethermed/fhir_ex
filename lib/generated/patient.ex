defmodule Fhir.Patient do
  @moduledoc """
  Demographics and other administrative information about an individual or animal receiving care or other health-related services.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:active, :boolean)
    field(:multipleBirthBoolean, :boolean)
    field(:language, :string)
    field(:resourceType, :string, default: "Patient")
    field(:implicitRules, :string)
    field(:birthDate, :string)
    field(:multipleBirthInteger, :float)
    field(:id, :string)
    field(:deceasedBoolean, :boolean)
    field(:gender, :string)
    field(:deceasedDateTime, :string)
    embeds_many(:photo, Fhir.Attachment)
    embeds_many(:communication, Fhir.PatientCommunication)
    embeds_many(:name, Fhir.HumanName)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:telecom, Fhir.ContactPoint)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:link, Fhir.PatientLink)
    embeds_one(:maritalStatus, Fhir.CodeableConcept)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:managingOrganization, Fhir.Reference)
    embeds_one(:_active, Fhir.Element)
    embeds_one(:_gender, Fhir.Element)
    embeds_one(:_multipleBirthBoolean, Fhir.Element)
    embeds_many(:contact, Fhir.PatientContact)
    embeds_one(:_deceasedDateTime, Fhir.Element)
    embeds_one(:_multipleBirthInteger, Fhir.Element)
    embeds_one(:_birthDate, Fhir.Element)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:generalPractitioner, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_deceasedBoolean, Fhir.Element)
    embeds_many(:address, Fhir.Address)
  end

  @type t :: %__MODULE__{
          active: boolean(),
          multipleBirthBoolean: boolean(),
          language: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          birthDate: String.t(),
          multipleBirthInteger: float(),
          id: String.t(),
          deceasedBoolean: boolean(),
          gender: String.t(),
          deceasedDateTime: String.t(),
          photo: [Fhir.Attachment.t()],
          communication: [Fhir.PatientCommunication.t()],
          name: [Fhir.HumanName.t()],
          extension: [Fhir.Extension.t()],
          telecom: [Fhir.ContactPoint.t()],
          contained: [Fhir.ResourceList.t()],
          link: [Fhir.PatientLink.t()],
          maritalStatus: Fhir.CodeableConcept.t(),
          _implicitRules: Fhir.Element.t(),
          managingOrganization: Fhir.Reference.t(),
          _active: Fhir.Element.t(),
          _gender: Fhir.Element.t(),
          _multipleBirthBoolean: Fhir.Element.t(),
          contact: [Fhir.PatientContact.t()],
          _deceasedDateTime: Fhir.Element.t(),
          _multipleBirthInteger: Fhir.Element.t(),
          _birthDate: Fhir.Element.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          generalPractitioner: [Fhir.Reference.t()],
          _language: Fhir.Element.t(),
          _deceasedBoolean: Fhir.Element.t(),
          address: [Fhir.Address.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :active,
      :multipleBirthBoolean,
      :language,
      :resourceType,
      :implicitRules,
      :birthDate,
      :multipleBirthInteger,
      :id,
      :deceasedBoolean,
      :gender,
      :deceasedDateTime
    ])
    |> cast_embed(:photo, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:communication, with: &Fhir.PatientCommunication.changeset/2)
    |> cast_embed(:name, with: &Fhir.HumanName.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:telecom, with: &Fhir.ContactPoint.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:link, with: &Fhir.PatientLink.changeset/2)
    |> cast_embed(:maritalStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:managingOrganization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_active, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_gender, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_multipleBirthBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contact, with: &Fhir.PatientContact.changeset/2)
    |> cast_embed(:_deceasedDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_multipleBirthInteger, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_birthDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:generalPractitioner, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_deceasedBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:address, with: &Fhir.Address.changeset/2)
    |> validate_inclusion(:active, [true, false])
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(
      :birthDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:gender, ~r/^[^\s]+( [^\s]+)*$/)
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
