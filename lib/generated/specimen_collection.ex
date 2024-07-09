defmodule Fhir.SpecimenCollection do
  @moduledoc """
  A sample to be used for analysis.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:collectedDateTime, :string)
    field(:id, :string)
    embeds_one(:_collectedDateTime, Fhir.Element)
    embeds_one(:bodySite, Fhir.CodeableReference)
    embeds_one(:collectedPeriod, Fhir.Period)
    embeds_one(:collector, Fhir.Reference)
    embeds_one(:device, Fhir.CodeableReference)
    embeds_one(:duration, Fhir.Duration)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:fastingStatusCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:fastingStatusDuration, Fhir.Duration)
    embeds_one(:method, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:procedure, Fhir.Reference)
    embeds_one(:quantity, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          collectedDateTime: String.t(),
          id: String.t(),
          _collectedDateTime: Fhir.Element.t(),
          bodySite: Fhir.CodeableReference.t(),
          collectedPeriod: Fhir.Period.t(),
          collector: Fhir.Reference.t(),
          device: Fhir.CodeableReference.t(),
          duration: Fhir.Duration.t(),
          extension: [Fhir.Extension.t()],
          fastingStatusCodeableConcept: Fhir.CodeableConcept.t(),
          fastingStatusDuration: Fhir.Duration.t(),
          method: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          procedure: Fhir.Reference.t(),
          quantity: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:collectedDateTime, :id])
    |> cast_embed(:_collectedDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:bodySite, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:collectedPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:collector, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:device, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:duration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:fastingStatusCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:fastingStatusDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:method, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:procedure, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
