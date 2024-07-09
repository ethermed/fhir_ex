defmodule Fhir.TriggerDefinition do
  @moduledoc """
  A description of a triggering event. Triggering events can be named events, data events, or periodic, as determined by the type element.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:name, :string)
    field(:subscriptionTopic, :string)
    field(:timingDate, :string)
    field(:timingDateTime, :string)

    field(:type, Ecto.Enum,
      values: [
        :"named-event",
        :periodic,
        :"data-changed",
        :"data-added",
        :"data-modified",
        :"data-removed",
        :"data-accessed",
        :"data-access-ended"
      ]
    )

    embeds_one(:_name, Fhir.Element)
    embeds_one(:_timingDate, Fhir.Element)
    embeds_one(:_timingDateTime, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_one(:condition, Fhir.Expression)
    embeds_many(:data, Fhir.DataRequirement)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:timingReference, Fhir.Reference)
    embeds_one(:timingTiming, Fhir.Timing)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          subscriptionTopic: String.t(),
          timingDate: String.t(),
          timingDateTime: String.t(),
          type: String.t(),
          _name: Fhir.Element.t(),
          _timingDate: Fhir.Element.t(),
          _timingDateTime: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          code: Fhir.CodeableConcept.t(),
          condition: Fhir.Expression.t(),
          data: [Fhir.DataRequirement.t()],
          extension: [Fhir.Extension.t()],
          timingReference: Fhir.Reference.t(),
          timingTiming: Fhir.Timing.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :name, :subscriptionTopic, :timingDate, :timingDateTime, :type])
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_timingDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_timingDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:condition, with: &Fhir.Expression.changeset/2)
    |> cast_embed(:data, with: &Fhir.DataRequirement.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:timingReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:timingTiming, with: &Fhir.Timing.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(:subscriptionTopic, ~r/^\S*$/)
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
