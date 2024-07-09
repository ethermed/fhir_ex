defmodule Fhir.TestPlanTestRun do
  @moduledoc """
  A plan for executing testing on an artifact or specifications.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:narrative, :string)
    embeds_one(:_narrative, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:script, Fhir.TestPlanScript)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          narrative: String.t(),
          _narrative: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          script: Fhir.TestPlanScript.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :narrative])
    |> cast_embed(:_narrative, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:script, with: &Fhir.TestPlanScript.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:narrative, ~r/^^[\s\S]+$$/)
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
