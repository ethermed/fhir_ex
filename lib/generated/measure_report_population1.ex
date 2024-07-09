defmodule Fhir.MeasureReportPopulation1 do
  @moduledoc """
  The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the resources involved in that calculation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:count, :float)
    field(:id, :string)
    field(:linkId, :string)
    embeds_one(:_count, Fhir.Element)
    embeds_one(:_linkId, Fhir.Element)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:subjectReport, Fhir.Reference)
    embeds_one(:subjectResults, Fhir.Reference)
    embeds_one(:subjects, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          count: float(),
          id: String.t(),
          linkId: String.t(),
          _count: Fhir.Element.t(),
          _linkId: Fhir.Element.t(),
          code: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          subjectReport: [Fhir.Reference.t()],
          subjectResults: Fhir.Reference.t(),
          subjects: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:count, :id, :linkId])
    |> cast_embed(:_count, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:subjectReport, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subjectResults, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subjects, with: &Fhir.Reference.changeset/2)
    |> validate_format(:count, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
