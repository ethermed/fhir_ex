defmodule Fhir.RiskAssessment do
  @moduledoc """
  An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:mitigation, :string)
    field(:occurrenceDateTime, :string)
    field(:resourceType, :string, default: "RiskAssessment")
    field(:status, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_mitigation, Fhir.Element)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:basedOn, Fhir.Reference)
    embeds_many(:basis, Fhir.Reference)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_one(:condition, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:method, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:occurrencePeriod, Fhir.Period)
    embeds_one(:parent, Fhir.Reference)
    embeds_one(:performer, Fhir.Reference)
    embeds_many(:prediction, Fhir.RiskAssessmentPrediction)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          mitigation: String.t(),
          occurrenceDateTime: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _mitigation: Fhir.Element.t(),
          _occurrenceDateTime: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          basedOn: Fhir.Reference.t(),
          basis: [Fhir.Reference.t()],
          code: Fhir.CodeableConcept.t(),
          condition: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          encounter: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          method: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          occurrencePeriod: Fhir.Period.t(),
          parent: Fhir.Reference.t(),
          performer: Fhir.Reference.t(),
          prediction: [Fhir.RiskAssessmentPrediction.t()],
          reason: [Fhir.CodeableReference.t()],
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :id,
      :implicitRules,
      :language,
      :mitigation,
      :occurrenceDateTime,
      :resourceType,
      :status
    ])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_mitigation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:basis, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:condition, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:method, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:occurrencePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:parent, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:performer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:prediction, with: &Fhir.RiskAssessmentPrediction.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:mitigation, ~r/^^[\s\S]+$$/)
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
