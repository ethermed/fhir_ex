defmodule Fhir.SupplyDelivery do
  @moduledoc """
  Record of delivery of what is supplied.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:occurrenceDateTime, :string)
    field(:resourceType, :string, default: "SupplyDelivery")
    field(:status, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:destination, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:occurrencePeriod, Fhir.Period)
    embeds_one(:occurrenceTiming, Fhir.Timing)
    embeds_many(:partOf, Fhir.Reference)
    embeds_one(:patient, Fhir.Reference)
    embeds_many(:receiver, Fhir.Reference)
    embeds_many(:suppliedItem, Fhir.SupplyDeliverySuppliedItem)
    embeds_one(:supplier, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          occurrenceDateTime: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _occurrenceDateTime: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          basedOn: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          destination: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          occurrencePeriod: Fhir.Period.t(),
          occurrenceTiming: Fhir.Timing.t(),
          partOf: [Fhir.Reference.t()],
          patient: Fhir.Reference.t(),
          receiver: [Fhir.Reference.t()],
          suppliedItem: [Fhir.SupplyDeliverySuppliedItem.t()],
          supplier: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :implicitRules, :language, :occurrenceDateTime, :resourceType, :status])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:destination, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:occurrencePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:occurrenceTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:receiver, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:suppliedItem, with: &Fhir.SupplyDeliverySuppliedItem.changeset/2)
    |> cast_embed(:supplier, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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
