defmodule Fhir.GuidanceResponse do
  @moduledoc """
  A guidance response is the formal response to a guidance request, including any output parameters returned by the evaluation, as well as the description of any proposed actions to be taken.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:moduleCanonical, :string)
    field(:moduleUri, :string)
    field(:occurrenceDateTime, :string)
    field(:resourceType, :string, default: "GuidanceResponse")
    field(:status, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_moduleCanonical, Fhir.Element)
    embeds_one(:_moduleUri, Fhir.Element)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:dataRequirement, Fhir.DataRequirement)
    embeds_one(:encounter, Fhir.Reference)
    embeds_one(:evaluationMessage, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:moduleCodeableConcept, Fhir.CodeableConcept)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:outputParameters, Fhir.Reference)
    embeds_one(:performer, Fhir.Reference)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:requestIdentifier, Fhir.Identifier)
    embeds_many(:result, Fhir.Reference)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          moduleCanonical: String.t(),
          moduleUri: String.t(),
          occurrenceDateTime: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _moduleCanonical: Fhir.Element.t(),
          _moduleUri: Fhir.Element.t(),
          _occurrenceDateTime: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          dataRequirement: [Fhir.DataRequirement.t()],
          encounter: Fhir.Reference.t(),
          evaluationMessage: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          moduleCodeableConcept: Fhir.CodeableConcept.t(),
          note: [Fhir.Annotation.t()],
          outputParameters: Fhir.Reference.t(),
          performer: Fhir.Reference.t(),
          reason: [Fhir.CodeableReference.t()],
          requestIdentifier: Fhir.Identifier.t(),
          result: [Fhir.Reference.t()],
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :id,
      :implicitRules,
      :language,
      :moduleCanonical,
      :moduleUri,
      :occurrenceDateTime,
      :resourceType,
      :status
    ])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_moduleCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_moduleUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:dataRequirement, with: &Fhir.DataRequirement.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:evaluationMessage, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:moduleCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:outputParameters, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:performer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:requestIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:result, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :occurrenceDateTime,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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
