defmodule Fhir.CoverageEligibilityResponse do
  @moduledoc """
  This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:purpose, :string)
    field(:outcome, :string)
    field(:servicedDate, :string)
    field(:language, :string)
    field(:created, :string)
    field(:resourceType, :string, default: "CoverageEligibilityResponse")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:disposition, :string)
    field(:id, :string)
    field(:preAuthRef, :string)
    embeds_many(:error, Fhir.CoverageEligibilityResponseError)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_outcome, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:form, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:requestor, Fhir.Reference)
    embeds_one(:_created, Fhir.Element)
    embeds_many(:_purpose, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_preAuthRef, Fhir.Element)
    embeds_one(:_servicedDate, Fhir.Element)
    embeds_one(:_disposition, Fhir.Element)
    embeds_one(:servicedPeriod, Fhir.Period)
    embeds_many(:insurance, Fhir.CoverageEligibilityResponseInsurance)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:event, Fhir.CoverageEligibilityResponseEvent)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:insurer, Fhir.Reference)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:request, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          purpose: String.t(),
          outcome: String.t(),
          servicedDate: String.t(),
          language: String.t(),
          created: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          disposition: String.t(),
          id: String.t(),
          preAuthRef: String.t(),
          error: [Fhir.CoverageEligibilityResponseError.t()],
          _status: Fhir.Element.t(),
          _outcome: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          form: Fhir.CodeableConcept.t(),
          contained: [Fhir.ResourceList.t()],
          requestor: Fhir.Reference.t(),
          _created: Fhir.Element.t(),
          _purpose: [Fhir.Element.t()],
          _implicitRules: Fhir.Element.t(),
          _preAuthRef: Fhir.Element.t(),
          _servicedDate: Fhir.Element.t(),
          _disposition: Fhir.Element.t(),
          servicedPeriod: Fhir.Period.t(),
          insurance: [Fhir.CoverageEligibilityResponseInsurance.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          event: [Fhir.CoverageEligibilityResponseEvent.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          insurer: Fhir.Reference.t(),
          patient: Fhir.Reference.t(),
          _language: Fhir.Element.t(),
          request: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :purpose,
      :outcome,
      :servicedDate,
      :language,
      :created,
      :resourceType,
      :implicitRules,
      :status,
      :disposition,
      :id,
      :preAuthRef
    ])
    |> cast_embed(:error, with: &Fhir.CoverageEligibilityResponseError.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_outcome, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:form, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:requestor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_created, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_purpose, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_preAuthRef, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_servicedDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_disposition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:servicedPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:insurance, with: &Fhir.CoverageEligibilityResponseInsurance.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:event, with: &Fhir.CoverageEligibilityResponseEvent.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:insurer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:request, with: &Fhir.Reference.changeset/2)
    |> validate_format(:outcome, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :created,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:disposition, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:preAuthRef, ~r/^^[\s\S]+$$/)
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
