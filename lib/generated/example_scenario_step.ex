defmodule Fhir.ExampleScenarioStep do
  @moduledoc """
  Example of workflow instance.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:number, :string)
    field(:pause, :boolean)
    field(:workflow, :string)
    embeds_one(:_number, Fhir.Element)
    embeds_one(:_pause, Fhir.Element)
    embeds_many(:alternative, Fhir.ExampleScenarioAlternative)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:operation, Fhir.ExampleScenarioOperation)
    embeds_one(:process, Fhir.ExampleScenarioProcess)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          number: String.t(),
          pause: boolean(),
          workflow: String.t(),
          _number: Fhir.Element.t(),
          _pause: Fhir.Element.t(),
          alternative: [Fhir.ExampleScenarioAlternative.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          operation: Fhir.ExampleScenarioOperation.t(),
          process: Fhir.ExampleScenarioProcess.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :number, :pause, :workflow])
    |> cast_embed(:_number, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_pause, with: &Fhir.Element.changeset/2)
    |> cast_embed(:alternative, with: &Fhir.ExampleScenarioAlternative.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:operation, with: &Fhir.ExampleScenarioOperation.changeset/2)
    |> cast_embed(:process, with: &Fhir.ExampleScenarioProcess.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:number, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:pause, [true, false])
    |> validate_format(:workflow, ~r/^\S*$/)
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
