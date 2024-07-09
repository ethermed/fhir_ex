defmodule Fhir.CoverageEligibilityResponseInsurance do
  @moduledoc """
  This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:inforce, :boolean)
    embeds_one(:_inforce, Fhir.Element)
    embeds_one(:benefitPeriod, Fhir.Period)
    embeds_one(:coverage, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:item, Fhir.CoverageEligibilityResponseItem)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          inforce: boolean(),
          _inforce: Fhir.Element.t(),
          benefitPeriod: Fhir.Period.t(),
          coverage: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          item: [Fhir.CoverageEligibilityResponseItem.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :inforce])
    |> cast_embed(:_inforce, with: &Fhir.Element.changeset/2)
    |> cast_embed(:benefitPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:coverage, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:item, with: &Fhir.CoverageEligibilityResponseItem.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:inforce, [true, false])
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
