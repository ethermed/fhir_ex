defmodule Fhir.Transport do
  @moduledoc """
  Record of transport of item.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:instantiatesUri, :string)
    field(:completionTime, :string)
    field(:description, :string)
    field(:intent, :string)
    field(:instantiatesCanonical, :string)
    field(:language, :string)
    field(:authoredOn, :string)
    field(:priority, :string)
    field(:resourceType, :string, default: "Transport")
    field(:lastModified, :string)
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:for, Fhir.Reference)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:relevantHistory, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_authoredOn, Fhir.Element)
    embeds_one(:groupIdentifier, Fhir.Identifier)
    embeds_one(:reason, Fhir.CodeableReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:focus, Fhir.Reference)
    embeds_one(:requester, Fhir.Reference)
    embeds_one(:requestedLocation, Fhir.Reference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:input, Fhir.TransportInput)
    embeds_one(:_priority, Fhir.Element)
    embeds_one(:_completionTime, Fhir.Element)
    embeds_one(:_intent, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:encounter, Fhir.Reference)
    embeds_one(:_instantiatesUri, Fhir.Element)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:insurance, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_lastModified, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:currentLocation, Fhir.Reference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:partOf, Fhir.Reference)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:history, Fhir.Reference)
    embeds_one(:statusReason, Fhir.CodeableConcept)
    embeds_many(:performerType, Fhir.CodeableConcept)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:restriction, Fhir.TransportRestriction)
    embeds_one(:owner, Fhir.Reference)
    embeds_many(:output, Fhir.TransportOutput)
  end

  @type t :: %__MODULE__{
          instantiatesUri: String.t(),
          completionTime: String.t(),
          description: String.t(),
          intent: String.t(),
          instantiatesCanonical: String.t(),
          language: String.t(),
          authoredOn: String.t(),
          priority: String.t(),
          resourceType: String.t(),
          lastModified: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          for: Fhir.Reference.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          relevantHistory: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          _authoredOn: Fhir.Element.t(),
          groupIdentifier: Fhir.Identifier.t(),
          reason: Fhir.CodeableReference.t(),
          _implicitRules: Fhir.Element.t(),
          focus: Fhir.Reference.t(),
          requester: Fhir.Reference.t(),
          requestedLocation: Fhir.Reference.t(),
          basedOn: [Fhir.Reference.t()],
          input: [Fhir.TransportInput.t()],
          _priority: Fhir.Element.t(),
          _completionTime: Fhir.Element.t(),
          _intent: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          encounter: Fhir.Reference.t(),
          _instantiatesUri: Fhir.Element.t(),
          location: Fhir.Reference.t(),
          code: Fhir.CodeableConcept.t(),
          insurance: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          _lastModified: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          currentLocation: Fhir.Reference.t(),
          identifier: [Fhir.Identifier.t()],
          partOf: [Fhir.Reference.t()],
          _language: Fhir.Element.t(),
          history: Fhir.Reference.t(),
          statusReason: Fhir.CodeableConcept.t(),
          performerType: [Fhir.CodeableConcept.t()],
          note: [Fhir.Annotation.t()],
          restriction: Fhir.TransportRestriction.t(),
          owner: Fhir.Reference.t(),
          output: [Fhir.TransportOutput.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :instantiatesUri,
      :completionTime,
      :description,
      :intent,
      :instantiatesCanonical,
      :language,
      :authoredOn,
      :priority,
      :resourceType,
      :lastModified,
      :implicitRules,
      :status,
      :id
    ])
    |> cast_embed(:for, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:relevantHistory, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_authoredOn, with: &Fhir.Element.changeset/2)
    |> cast_embed(:groupIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:focus, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:requester, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:requestedLocation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:input, with: &Fhir.TransportInput.changeset/2)
    |> cast_embed(:_priority, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_completionTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_intent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_instantiatesUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:insurance, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_lastModified, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:currentLocation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:history, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:statusReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:performerType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:restriction, with: &Fhir.TransportRestriction.changeset/2)
    |> cast_embed(:owner, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:output, with: &Fhir.TransportOutput.changeset/2)
    |> validate_format(:instantiatesUri, ~r/^\S*$/)
    |> validate_format(
      :completionTime,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:intent, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:instantiatesCanonical, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :authoredOn,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:priority, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :lastModified,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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
