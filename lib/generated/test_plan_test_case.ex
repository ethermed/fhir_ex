defmodule Fhir.TestPlanTestCase do
  @moduledoc """
  A plan for executing testing on an artifact or specifications.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:sequence, :float)
    embeds_one(:_sequence, Fhir.Element)
    embeds_many(:assertion, Fhir.TestPlanAssertion)
    embeds_many(:dependency, Fhir.TestPlanDependency1)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:scope, Fhir.Reference)
    embeds_many(:testData, Fhir.TestPlanTestData)
    embeds_many(:testRun, Fhir.TestPlanTestRun)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          sequence: float(),
          _sequence: Fhir.Element.t(),
          assertion: [Fhir.TestPlanAssertion.t()],
          dependency: [Fhir.TestPlanDependency1.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          scope: [Fhir.Reference.t()],
          testData: [Fhir.TestPlanTestData.t()],
          testRun: [Fhir.TestPlanTestRun.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :sequence])
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:assertion, with: &Fhir.TestPlanAssertion.changeset/2)
    |> cast_embed(:dependency, with: &Fhir.TestPlanDependency1.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:scope, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:testData, with: &Fhir.TestPlanTestData.changeset/2)
    |> cast_embed(:testRun, with: &Fhir.TestPlanTestRun.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:sequence, ~r/^[0]|[-+]?[1-9][0-9]*$/)
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
