defmodule Fhir.CoverageEligibilityRequest do
  @moduledoc """
  The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:created, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:purpose, :string)
    field(:resourceType, :string, default: "CoverageEligibilityRequest")
    field(:servicedDate, :string)
    field(:status, :string)
    embeds_one(:_created, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:_purpose, Fhir.Element)
    embeds_one(:_servicedDate, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:enterer, Fhir.Reference)
    embeds_many(:event, Fhir.CoverageEligibilityRequestEvent)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:facility, Fhir.Reference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:insurance, Fhir.CoverageEligibilityRequestInsurance)
    embeds_one(:insurer, Fhir.Reference)
    embeds_many(:item, Fhir.CoverageEligibilityRequestItem)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:priority, Fhir.CodeableConcept)
    embeds_one(:provider, Fhir.Reference)
    embeds_one(:servicedPeriod, Fhir.Period)
    embeds_many(:supportingInfo, Fhir.CoverageEligibilityRequestSupportingInfo)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          created: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          purpose: String.t(),
          resourceType: String.t(),
          servicedDate: String.t(),
          status: String.t(),
          _created: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _purpose: [Fhir.Element.t()],
          _servicedDate: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          enterer: Fhir.Reference.t(),
          event: [Fhir.CoverageEligibilityRequestEvent.t()],
          extension: [Fhir.Extension.t()],
          facility: Fhir.Reference.t(),
          identifier: [Fhir.Identifier.t()],
          insurance: [Fhir.CoverageEligibilityRequestInsurance.t()],
          insurer: Fhir.Reference.t(),
          item: [Fhir.CoverageEligibilityRequestItem.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          patient: Fhir.Reference.t(),
          priority: Fhir.CodeableConcept.t(),
          provider: Fhir.Reference.t(),
          servicedPeriod: Fhir.Period.t(),
          supportingInfo: [Fhir.CoverageEligibilityRequestSupportingInfo.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :created,
      :id,
      :implicitRules,
      :language,
      :purpose,
      :resourceType,
      :servicedDate,
      :status
    ])
    |> cast_embed(:_created, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_purpose, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_servicedDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:enterer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:event, with: &Fhir.CoverageEligibilityRequestEvent.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:facility, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:insurance, with: &Fhir.CoverageEligibilityRequestInsurance.changeset/2)
    |> cast_embed(:insurer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:item, with: &Fhir.CoverageEligibilityRequestItem.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:priority, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:provider, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:servicedPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:supportingInfo,
      with: &Fhir.CoverageEligibilityRequestSupportingInfo.changeset/2
    )
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(
      :created,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
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
