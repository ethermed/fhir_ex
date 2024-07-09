defmodule Fhir.CoverageEligibilityRequestInsurance do
  @moduledoc """
  The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:businessArrangement, :string)
    field(:focal, :boolean)
    field(:id, :string)
    embeds_one(:_businessArrangement, Fhir.Element)
    embeds_one(:_focal, Fhir.Element)
    embeds_one(:coverage, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          businessArrangement: String.t(),
          focal: boolean(),
          id: String.t(),
          _businessArrangement: Fhir.Element.t(),
          _focal: Fhir.Element.t(),
          coverage: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:businessArrangement, :focal, :id])
    |> cast_embed(:_businessArrangement, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_focal, with: &Fhir.Element.changeset/2)
    |> cast_embed(:coverage, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:businessArrangement, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:focal, [true, false])
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
