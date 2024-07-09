defmodule Fhir.TestPlanTestData do
  @moduledoc """
  A plan for executing testing on an artifact or specifications.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:sourceString, :string)
    embeds_one(:_sourceString, Fhir.Element)
    embeds_one(:content, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:sourceReference, Fhir.Reference)
    embeds_one(:type, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          sourceString: String.t(),
          _sourceString: Fhir.Element.t(),
          content: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          sourceReference: Fhir.Reference.t(),
          type: Fhir.Coding.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :sourceString])
    |> cast_embed(:_sourceString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:content, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:sourceReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.Coding.changeset/2)
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
