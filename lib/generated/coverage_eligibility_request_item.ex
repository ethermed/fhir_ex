defmodule Fhir.CoverageEligibilityRequestItem do
  @moduledoc """
  The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:supportingInfoSequence, :string)
    embeds_many(:_supportingInfoSequence, Fhir.Element)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_many(:detail, Fhir.Reference)
    embeds_many(:diagnosis, Fhir.CoverageEligibilityRequestDiagnosis)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:facility, Fhir.Reference)
    embeds_many(:modifier, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:productOrService, Fhir.CodeableConcept)
    embeds_one(:provider, Fhir.Reference)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_one(:unitPrice, Fhir.Money)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          supportingInfoSequence: String.t(),
          _supportingInfoSequence: [Fhir.Element.t()],
          category: Fhir.CodeableConcept.t(),
          detail: [Fhir.Reference.t()],
          diagnosis: [Fhir.CoverageEligibilityRequestDiagnosis.t()],
          extension: [Fhir.Extension.t()],
          facility: Fhir.Reference.t(),
          modifier: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          productOrService: Fhir.CodeableConcept.t(),
          provider: Fhir.Reference.t(),
          quantity: Fhir.Quantity.t(),
          unitPrice: Fhir.Money.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :supportingInfoSequence])
    |> cast_embed(:_supportingInfoSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:detail, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:diagnosis, with: &Fhir.CoverageEligibilityRequestDiagnosis.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:facility, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:productOrService, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:provider, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:unitPrice, with: &Fhir.Money.changeset/2)
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
