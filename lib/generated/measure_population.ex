defmodule Fhir.MeasurePopulation do
  @moduledoc """
  The Measure resource provides the definition of a quality measure.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:inputPopulationId, :string)
    field(:linkId, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_inputPopulationId, Fhir.Element)
    embeds_one(:_linkId, Fhir.Element)
    embeds_one(:aggregateMethod, Fhir.CodeableConcept)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_one(:criteria, Fhir.Expression)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:groupDefinition, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          inputPopulationId: String.t(),
          linkId: String.t(),
          _description: Fhir.Element.t(),
          _inputPopulationId: Fhir.Element.t(),
          _linkId: Fhir.Element.t(),
          aggregateMethod: Fhir.CodeableConcept.t(),
          code: Fhir.CodeableConcept.t(),
          criteria: Fhir.Expression.t(),
          extension: [Fhir.Extension.t()],
          groupDefinition: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :inputPopulationId, :linkId])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_inputPopulationId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:aggregateMethod, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:criteria, with: &Fhir.Expression.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:groupDefinition, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:inputPopulationId, ~r/^^[\s\S]+$$/)
    |> validate_format(:linkId, ~r/^^[\s\S]+$$/)
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
