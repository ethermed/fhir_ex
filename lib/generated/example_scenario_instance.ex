defmodule Fhir.ExampleScenarioInstance do
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
    field(:key, :string)
    field(:structureProfileCanonical, :string)
    field(:structureProfileUri, :string)
    field(:structureVersion, :string)
    field(:title, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_key, Fhir.Element)
    embeds_one(:_structureProfileCanonical, Fhir.Element)
    embeds_one(:_structureProfileUri, Fhir.Element)
    embeds_one(:_structureVersion, Fhir.Element)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:containedInstance, Fhir.ExampleScenarioContainedInstance)
    embeds_one(:content, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:structureType, Fhir.Coding)
    embeds_many(:version, Fhir.ExampleScenarioVersion)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          key: String.t(),
          structureProfileCanonical: String.t(),
          structureProfileUri: String.t(),
          structureVersion: String.t(),
          title: String.t(),
          _description: Fhir.Element.t(),
          _key: Fhir.Element.t(),
          _structureProfileCanonical: Fhir.Element.t(),
          _structureProfileUri: Fhir.Element.t(),
          _structureVersion: Fhir.Element.t(),
          _title: Fhir.Element.t(),
          containedInstance: [Fhir.ExampleScenarioContainedInstance.t()],
          content: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          structureType: Fhir.Coding.t(),
          version: [Fhir.ExampleScenarioVersion.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :description,
      :id,
      :key,
      :structureProfileCanonical,
      :structureProfileUri,
      :structureVersion,
      :title
    ])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_key, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_structureProfileCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_structureProfileUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_structureVersion, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:containedInstance, with: &Fhir.ExampleScenarioContainedInstance.changeset/2)
    |> cast_embed(:content, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:structureType, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:version, with: &Fhir.ExampleScenarioVersion.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:key, ~r/^^[\s\S]+$$/)
    |> validate_format(:structureVersion, ~r/^^[\s\S]+$$/)
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
