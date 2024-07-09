defmodule Fhir.DetectedIssue do
  @moduledoc """
  Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, gaps in care, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:detail, :string)
    field(:id, :string)
    field(:identifiedDateTime, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:reference, :string)
    field(:resourceType, :string, default: "DetectedIssue")
    field(:severity, :string)
    field(:status, :string)
    embeds_one(:_detail, Fhir.Element)
    embeds_one(:_identifiedDateTime, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_reference, Fhir.Element)
    embeds_one(:_severity, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:author, Fhir.Reference)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:evidence, Fhir.DetectedIssueEvidence)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifiedPeriod, Fhir.Period)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:implicated, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:mitigation, Fhir.DetectedIssueMitigation)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          detail: String.t(),
          id: String.t(),
          identifiedDateTime: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          reference: String.t(),
          resourceType: String.t(),
          severity: String.t(),
          status: String.t(),
          _detail: Fhir.Element.t(),
          _identifiedDateTime: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _reference: Fhir.Element.t(),
          _severity: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          author: Fhir.Reference.t(),
          category: [Fhir.CodeableConcept.t()],
          code: Fhir.CodeableConcept.t(),
          contained: [Fhir.ResourceList.t()],
          encounter: Fhir.Reference.t(),
          evidence: [Fhir.DetectedIssueEvidence.t()],
          extension: [Fhir.Extension.t()],
          identifiedPeriod: Fhir.Period.t(),
          identifier: [Fhir.Identifier.t()],
          implicated: [Fhir.Reference.t()],
          meta: Fhir.Meta.t(),
          mitigation: [Fhir.DetectedIssueMitigation.t()],
          modifierExtension: [Fhir.Extension.t()],
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :detail,
      :id,
      :identifiedDateTime,
      :implicitRules,
      :language,
      :reference,
      :resourceType,
      :severity,
      :status
    ])
    |> cast_embed(:_detail, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_identifiedDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_reference, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_severity, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:author, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:evidence, with: &Fhir.DetectedIssueEvidence.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifiedPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:implicated, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:mitigation, with: &Fhir.DetectedIssueMitigation.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:detail, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:reference, ~r/^\S*$/)
    |> validate_format(:severity, ~r/^[^\s]+( [^\s]+)*$/)
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
