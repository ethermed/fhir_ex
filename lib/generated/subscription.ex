defmodule Fhir.Subscription do
  @moduledoc """
  The subscription resource describes a particular client's request to be notified about a SubscriptionTopic.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:name, :string)
    field(:reason, :string)
    field(:timeout, :float)
    field(:contentType, :string)
    field(:heartbeatPeriod, :float)
    field(:topic, :string)
    field(:language, :string)
    field(:endpoint, :string)
    field(:resourceType, :string, default: "Subscription")
    field(:implicitRules, :string)
    field(:maxCount, :float)
    field(:content, :string)
    field(:status, :string)
    field(:end, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:filterBy, Fhir.SubscriptionFilterBy)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:managingEntity, Fhir.Reference)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_heartbeatPeriod, Fhir.Element)
    embeds_many(:parameter, Fhir.SubscriptionParameter)
    embeds_one(:_contentType, Fhir.Element)
    embeds_one(:_maxCount, Fhir.Element)
    embeds_many(:contact, Fhir.ContactPoint)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_content, Fhir.Element)
    embeds_one(:_endpoint, Fhir.Element)
    embeds_one(:meta, Fhir.Meta)
    embeds_one(:_end, Fhir.Element)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_timeout, Fhir.Element)
    embeds_one(:_reason, Fhir.Element)
    embeds_one(:channelType, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          name: String.t(),
          reason: String.t(),
          timeout: float(),
          contentType: String.t(),
          heartbeatPeriod: float(),
          topic: String.t(),
          language: String.t(),
          endpoint: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          maxCount: float(),
          content: String.t(),
          status: String.t(),
          end: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          filterBy: [Fhir.SubscriptionFilterBy.t()],
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          _implicitRules: Fhir.Element.t(),
          managingEntity: Fhir.Reference.t(),
          _name: Fhir.Element.t(),
          _heartbeatPeriod: Fhir.Element.t(),
          parameter: [Fhir.SubscriptionParameter.t()],
          _contentType: Fhir.Element.t(),
          _maxCount: Fhir.Element.t(),
          contact: [Fhir.ContactPoint.t()],
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          _content: Fhir.Element.t(),
          _endpoint: Fhir.Element.t(),
          meta: Fhir.Meta.t(),
          _end: Fhir.Element.t(),
          identifier: [Fhir.Identifier.t()],
          _language: Fhir.Element.t(),
          _timeout: Fhir.Element.t(),
          _reason: Fhir.Element.t(),
          channelType: Fhir.Coding.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :name,
      :reason,
      :timeout,
      :contentType,
      :heartbeatPeriod,
      :topic,
      :language,
      :endpoint,
      :resourceType,
      :implicitRules,
      :maxCount,
      :content,
      :status,
      :end,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:filterBy, with: &Fhir.SubscriptionFilterBy.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:managingEntity, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_heartbeatPeriod, with: &Fhir.Element.changeset/2)
    |> cast_embed(:parameter, with: &Fhir.SubscriptionParameter.changeset/2)
    |> cast_embed(:_contentType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_maxCount, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactPoint.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_content, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_endpoint, with: &Fhir.Element.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:_end, with: &Fhir.Element.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_timeout, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_reason, with: &Fhir.Element.changeset/2)
    |> cast_embed(:channelType, with: &Fhir.Coding.changeset/2)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(:reason, ~r/^^[\s\S]+$$/)
    |> validate_format(:timeout, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:contentType, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:heartbeatPeriod, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:topic, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:endpoint, ~r/^\S*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:content, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :end,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
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
