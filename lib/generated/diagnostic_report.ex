defmodule Fhir.DiagnosticReport do
  @moduledoc """
  The findings and interpretation of diagnostic tests performed on patients, groups of patients, products, substances, devices, and locations, and/or specimens derived from these. The report includes clinical context such as requesting provider information, and some mix of atomic results, images, textual and coded interpretations, and formatted representation of diagnostic reports. The report also includes non-clinical context such as batch analysis and stability reporting of products and substances.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:effectiveDateTime, :string)
    field(:language, :string)
    field(:conclusion, :string)
    field(:resourceType, :string, default: "DiagnosticReport")
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    field(:issued, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:composition, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:specimen, Fhir.Reference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_many(:conclusionCode, Fhir.CodeableConcept)
    embeds_many(:study, Fhir.Reference)
    embeds_one(:effectivePeriod, Fhir.Period)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:result, Fhir.Reference)
    embeds_many(:resultsInterpreter, Fhir.Reference)
    embeds_many(:presentedForm, Fhir.Attachment)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:performer, Fhir.Reference)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:supportingInfo, Fhir.DiagnosticReportSupportingInfo)
    embeds_one(:subject, Fhir.Reference)
    embeds_many(:media, Fhir.DiagnosticReportMedia)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_conclusion, Fhir.Element)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:_issued, Fhir.Element)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_effectiveDateTime, Fhir.Element)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          effectiveDateTime: String.t(),
          language: String.t(),
          conclusion: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          issued: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          composition: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          specimen: [Fhir.Reference.t()],
          _implicitRules: Fhir.Element.t(),
          conclusionCode: [Fhir.CodeableConcept.t()],
          study: [Fhir.Reference.t()],
          effectivePeriod: Fhir.Period.t(),
          basedOn: [Fhir.Reference.t()],
          result: [Fhir.Reference.t()],
          resultsInterpreter: [Fhir.Reference.t()],
          presentedForm: [Fhir.Attachment.t()],
          encounter: Fhir.Reference.t(),
          performer: [Fhir.Reference.t()],
          code: Fhir.CodeableConcept.t(),
          supportingInfo: [Fhir.DiagnosticReportSupportingInfo.t()],
          subject: Fhir.Reference.t(),
          media: [Fhir.DiagnosticReportMedia.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          _conclusion: Fhir.Element.t(),
          meta: Fhir.Meta.t(),
          _issued: Fhir.Element.t(),
          identifier: [Fhir.Identifier.t()],
          category: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          _effectiveDateTime: Fhir.Element.t(),
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :effectiveDateTime,
      :language,
      :conclusion,
      :resourceType,
      :implicitRules,
      :status,
      :id,
      :issued
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:composition, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:specimen, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:conclusionCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:study, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:effectivePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:result, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:resultsInterpreter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:presentedForm, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:performer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:supportingInfo, with: &Fhir.DiagnosticReportSupportingInfo.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:media, with: &Fhir.DiagnosticReportMedia.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_conclusion, with: &Fhir.Element.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:_issued, with: &Fhir.Element.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_effectiveDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:conclusion, ~r/^^[\s\S]+$$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(
      :issued,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
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
