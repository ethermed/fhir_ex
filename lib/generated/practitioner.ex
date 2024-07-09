defmodule Fhir.Practitioner do
  @moduledoc """
  A person who is directly or indirectly involved in the provisioning of healthcare or related services.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:active, :boolean)
    field(:birthDate, :string)
    field(:deceasedBoolean, :boolean)
    field(:deceasedDateTime, :string)
    field(:gender, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "Practitioner")
    embeds_one(:_active, Fhir.Element)
    embeds_one(:_birthDate, Fhir.Element)
    embeds_one(:_deceasedBoolean, Fhir.Element)
    embeds_one(:_deceasedDateTime, Fhir.Element)
    embeds_one(:_gender, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:address, Fhir.Address)
    embeds_many(:communication, Fhir.PractitionerCommunication)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:name, Fhir.HumanName)
    embeds_many(:photo, Fhir.Attachment)
    embeds_many(:qualification, Fhir.PractitionerQualification)
    embeds_many(:telecom, Fhir.ContactPoint)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          active: boolean(),
          birthDate: String.t(),
          deceasedBoolean: boolean(),
          deceasedDateTime: String.t(),
          gender: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          _active: Fhir.Element.t(),
          _birthDate: Fhir.Element.t(),
          _deceasedBoolean: Fhir.Element.t(),
          _deceasedDateTime: Fhir.Element.t(),
          _gender: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          address: [Fhir.Address.t()],
          communication: [Fhir.PractitionerCommunication.t()],
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          name: [Fhir.HumanName.t()],
          photo: [Fhir.Attachment.t()],
          qualification: [Fhir.PractitionerQualification.t()],
          telecom: [Fhir.ContactPoint.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :active,
      :birthDate,
      :deceasedBoolean,
      :deceasedDateTime,
      :gender,
      :id,
      :implicitRules,
      :language,
      :resourceType
    ])
    |> cast_embed(:_active, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_birthDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_deceasedBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_deceasedDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_gender, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:address, with: &Fhir.Address.changeset/2)
    |> cast_embed(:communication, with: &Fhir.PractitionerCommunication.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:name, with: &Fhir.HumanName.changeset/2)
    |> cast_embed(:photo, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:qualification, with: &Fhir.PractitionerQualification.changeset/2)
    |> cast_embed(:telecom, with: &Fhir.ContactPoint.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_inclusion(:active, [true, false])
    |> validate_format(
      :birthDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:gender, ~r/^[^\s]+( [^\s]+)*$/)
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
