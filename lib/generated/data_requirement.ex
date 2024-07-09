defmodule Fhir.DataRequirement do
  @moduledoc """
  Describes a required data item for evaluation in terms of the type of data, and optional code or date-based filters of the data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:limit, :float)
    field(:mustSupport, :string)
    field(:profile, :string)
    field(:type, :string)
    embeds_one(:_limit, Fhir.Element)
    embeds_many(:_mustSupport, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:codeFilter, Fhir.DataRequirementCodeFilter)
    embeds_many(:dateFilter, Fhir.DataRequirementDateFilter)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:sort, Fhir.DataRequirementSort)
    embeds_one(:subjectCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:subjectReference, Fhir.Reference)
    embeds_many(:valueFilter, Fhir.DataRequirementValueFilter)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          limit: float(),
          mustSupport: String.t(),
          profile: String.t(),
          type: String.t(),
          _limit: Fhir.Element.t(),
          _mustSupport: [Fhir.Element.t()],
          _type: Fhir.Element.t(),
          codeFilter: [Fhir.DataRequirementCodeFilter.t()],
          dateFilter: [Fhir.DataRequirementDateFilter.t()],
          extension: [Fhir.Extension.t()],
          sort: [Fhir.DataRequirementSort.t()],
          subjectCodeableConcept: Fhir.CodeableConcept.t(),
          subjectReference: Fhir.Reference.t(),
          valueFilter: [Fhir.DataRequirementValueFilter.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :limit, :mustSupport, :profile, :type])
    |> cast_embed(:_limit, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_mustSupport, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:codeFilter, with: &Fhir.DataRequirementCodeFilter.changeset/2)
    |> cast_embed(:dateFilter, with: &Fhir.DataRequirementDateFilter.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:sort, with: &Fhir.DataRequirementSort.changeset/2)
    |> cast_embed(:subjectCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subjectReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:valueFilter, with: &Fhir.DataRequirementValueFilter.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
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
