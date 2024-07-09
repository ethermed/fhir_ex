defmodule Fhir.ExplanationOfBenefitSupportingInfo do
  @moduledoc """
  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:sequence, :float)
    field(:timingDate, :string)
    field(:valueBoolean, :boolean)
    field(:valueString, :string)
    embeds_one(:_sequence, Fhir.Element)
    embeds_one(:_timingDate, Fhir.Element)
    embeds_one(:_valueBoolean, Fhir.Element)
    embeds_one(:_valueString, Fhir.Element)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:reason, Fhir.Coding)
    embeds_one(:timingPeriod, Fhir.Period)
    embeds_one(:valueAttachment, Fhir.Attachment)
    embeds_one(:valueIdentifier, Fhir.Identifier)
    embeds_one(:valueQuantity, Fhir.Quantity)
    embeds_one(:valueReference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          sequence: float(),
          timingDate: String.t(),
          valueBoolean: boolean(),
          valueString: String.t(),
          _sequence: Fhir.Element.t(),
          _timingDate: Fhir.Element.t(),
          _valueBoolean: Fhir.Element.t(),
          _valueString: Fhir.Element.t(),
          category: Fhir.CodeableConcept.t(),
          code: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          reason: Fhir.Coding.t(),
          timingPeriod: Fhir.Period.t(),
          valueAttachment: Fhir.Attachment.t(),
          valueIdentifier: Fhir.Identifier.t(),
          valueQuantity: Fhir.Quantity.t(),
          valueReference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :sequence, :timingDate, :valueBoolean, :valueString])
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_timingDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:reason, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:timingPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:valueAttachment, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:valueIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:valueQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:valueReference, with: &Fhir.Reference.changeset/2)
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
