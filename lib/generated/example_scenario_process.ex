defmodule Fhir.ExampleScenarioProcess do
  @moduledoc """
  Example of workflow instance.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:postConditions, :string)
    field(:preConditions, :string)
    field(:title, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_postConditions, Fhir.Element)
    embeds_one(:_preConditions, Fhir.Element)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:step, Fhir.ExampleScenarioStep)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          postConditions: String.t(),
          preConditions: String.t(),
          title: String.t(),
          _description: Fhir.Element.t(),
          _postConditions: Fhir.Element.t(),
          _preConditions: Fhir.Element.t(),
          _title: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          step: [Fhir.ExampleScenarioStep.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :postConditions, :preConditions, :title])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_postConditions, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_preConditions, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:step, with: &Fhir.ExampleScenarioStep.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:postConditions, ~r/^^[\s\S]+$$/)
    |> validate_format(:preConditions, ~r/^^[\s\S]+$$/)
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
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
