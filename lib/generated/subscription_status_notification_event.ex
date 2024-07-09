defmodule Fhir.SubscriptionStatusNotificationEvent do
  @moduledoc """
  The SubscriptionStatus resource describes the state of a Subscription during notifications.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:eventNumber, :string)
    field(:id, :string)
    field(:timestamp, :string)
    embeds_one(:_eventNumber, Fhir.Element)
    embeds_one(:_timestamp, Fhir.Element)
    embeds_many(:additionalContext, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:focus, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          eventNumber: String.t(),
          id: String.t(),
          timestamp: String.t(),
          _eventNumber: Fhir.Element.t(),
          _timestamp: Fhir.Element.t(),
          additionalContext: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          focus: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:eventNumber, :id, :timestamp])
    |> cast_embed(:_eventNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_timestamp, with: &Fhir.Element.changeset/2)
    |> cast_embed(:additionalContext, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:focus, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:eventNumber, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :timestamp,
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
