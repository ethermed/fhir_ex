defmodule Fhir.SubscriptionStatus do
  @moduledoc """
  The SubscriptionStatus resource describes the state of a Subscription during notifications.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:eventsSinceSubscriptionStart, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "SubscriptionStatus")
    field(:status, :string)
    field(:topic, :string)
    field(:type, :string)
    embeds_one(:_eventsSinceSubscriptionStart, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:error, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:notificationEvent, Fhir.SubscriptionStatusNotificationEvent)
    embeds_one(:subscription, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          eventsSinceSubscriptionStart: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          status: String.t(),
          topic: String.t(),
          type: String.t(),
          _eventsSinceSubscriptionStart: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          error: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          notificationEvent: [Fhir.SubscriptionStatusNotificationEvent.t()],
          subscription: Fhir.Reference.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :eventsSinceSubscriptionStart,
      :id,
      :implicitRules,
      :language,
      :resourceType,
      :status,
      :topic,
      :type
    ])
    |> cast_embed(:_eventsSinceSubscriptionStart, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:error, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:notificationEvent, with: &Fhir.SubscriptionStatusNotificationEvent.changeset/2)
    |> cast_embed(:subscription, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:eventsSinceSubscriptionStart, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:topic, ~r/^\S*$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
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
