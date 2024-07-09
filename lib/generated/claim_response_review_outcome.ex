defmodule Fhir.ClaimResponseReviewOutcome do
  @moduledoc """
  This resource provides the adjudication details from the processing of a Claim resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:preAuthRef, :string)
    embeds_one(:_preAuthRef, Fhir.Element)
    embeds_one(:decision, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:preAuthPeriod, Fhir.Period)
    embeds_many(:reason, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          preAuthRef: String.t(),
          _preAuthRef: Fhir.Element.t(),
          decision: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          preAuthPeriod: Fhir.Period.t(),
          reason: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :preAuthRef])
    |> cast_embed(:_preAuthRef, with: &Fhir.Element.changeset/2)
    |> cast_embed(:decision, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:preAuthPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:preAuthRef, ~r/^^[\s\S]+$$/)
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
