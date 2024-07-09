defmodule Fhir.SupplyRequest do
  @moduledoc """
  A record of a request to deliver a medication, substance or device used in the healthcare setting to a particular destination for a particular person or organization.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:language, :string)
    field(:authoredOn, :string)
    field(:priority, :string)
    field(:resourceType, :string, default: "SupplyRequest")
    field(:implicitRules, :string)
    field(:occurrenceDateTime, :string)
    field(:status, :string)
    field(:id, :string)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:deliverFrom, Fhir.Reference)
    embeds_one(:_authoredOn, Fhir.Element)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:requester, Fhir.Reference)
    embeds_one(:item, Fhir.CodeableReference)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_one(:_priority, Fhir.Element)
    embeds_one(:deliverTo, Fhir.Reference)
    embeds_many(:parameter, Fhir.SupplyRequestParameter)
    embeds_many(:supplier, Fhir.Reference)
    embeds_one(:occurrencePeriod, Fhir.Period)
    embeds_one(:occurrenceTiming, Fhir.Timing)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_one(:deliverFor, Fhir.Reference)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
  end

  @type t :: %__MODULE__{
          language: String.t(),
          authoredOn: String.t(),
          priority: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          occurrenceDateTime: String.t(),
          status: String.t(),
          id: String.t(),
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          deliverFrom: Fhir.Reference.t(),
          _authoredOn: Fhir.Element.t(),
          reason: [Fhir.CodeableReference.t()],
          _implicitRules: Fhir.Element.t(),
          requester: Fhir.Reference.t(),
          item: Fhir.CodeableReference.t(),
          basedOn: [Fhir.Reference.t()],
          _priority: Fhir.Element.t(),
          deliverTo: Fhir.Reference.t(),
          parameter: [Fhir.SupplyRequestParameter.t()],
          supplier: [Fhir.Reference.t()],
          occurrencePeriod: Fhir.Period.t(),
          occurrenceTiming: Fhir.Timing.t(),
          text: Fhir.Narrative.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          category: Fhir.CodeableConcept.t(),
          _language: Fhir.Element.t(),
          quantity: Fhir.Quantity.t(),
          deliverFor: Fhir.Reference.t(),
          _occurrenceDateTime: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :language,
      :authoredOn,
      :priority,
      :resourceType,
      :implicitRules,
      :occurrenceDateTime,
      :status,
      :id
    ])
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:deliverFrom, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_authoredOn, with: &Fhir.Element.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:requester, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:item, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_priority, with: &Fhir.Element.changeset/2)
    |> cast_embed(:deliverTo, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:parameter, with: &Fhir.SupplyRequestParameter.changeset/2)
    |> cast_embed(:supplier, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:occurrencePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:occurrenceTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:deliverFor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :authoredOn,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:priority, ~r/^[^\s]+( [^\s]+)*$/)
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
