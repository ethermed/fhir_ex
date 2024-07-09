defmodule Fhir.Consent do
  @moduledoc """
  A record of a healthcare consumer’s  choices  or choices made on their behalf by a third party, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:decision, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "Consent")
    field(:status, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_decision, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:controller, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:grantee, Fhir.Reference)
    embeds_many(:grantor, Fhir.Reference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:manager, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:period, Fhir.Period)
    embeds_one(:policyBasis, Fhir.ConsentPolicyBasis)
    embeds_many(:policyText, Fhir.Reference)
    embeds_many(:provision, Fhir.ConsentProvision)
    embeds_many(:regulatoryBasis, Fhir.CodeableConcept)
    embeds_many(:sourceAttachment, Fhir.Attachment)
    embeds_many(:sourceReference, Fhir.Reference)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:verification, Fhir.ConsentVerification)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          decision: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _date: Fhir.Element.t(),
          _decision: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          category: [Fhir.CodeableConcept.t()],
          contained: [Fhir.ResourceList.t()],
          controller: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          grantee: [Fhir.Reference.t()],
          grantor: [Fhir.Reference.t()],
          identifier: [Fhir.Identifier.t()],
          manager: [Fhir.Reference.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          period: Fhir.Period.t(),
          policyBasis: Fhir.ConsentPolicyBasis.t(),
          policyText: [Fhir.Reference.t()],
          provision: [Fhir.ConsentProvision.t()],
          regulatoryBasis: [Fhir.CodeableConcept.t()],
          sourceAttachment: [Fhir.Attachment.t()],
          sourceReference: [Fhir.Reference.t()],
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          verification: [Fhir.ConsentVerification.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:date, :decision, :id, :implicitRules, :language, :resourceType, :status])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_decision, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:controller, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:grantee, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:grantor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:manager, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:policyBasis, with: &Fhir.ConsentPolicyBasis.changeset/2)
    |> cast_embed(:policyText, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:provision, with: &Fhir.ConsentProvision.changeset/2)
    |> cast_embed(:regulatoryBasis, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:sourceAttachment, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:sourceReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:verification, with: &Fhir.ConsentVerification.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:decision, ~r/^[^\s]+( [^\s]+)*$/)
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
