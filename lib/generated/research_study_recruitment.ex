defmodule Fhir.ResearchStudyRecruitment do
  @moduledoc """
  A scientific study of nature that sometimes includes processes involved in health and disease. For example, clinical trials are research studies that involve people. These studies may be related to new ways to screen, prevent, diagnose, and treat disease. They may also study certain outcomes and certain groups of people by looking at data collected in the past or future.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:actualNumber, :float)
    field(:id, :string)
    field(:targetNumber, :float)
    embeds_one(:_actualNumber, Fhir.Element)
    embeds_one(:_targetNumber, Fhir.Element)
    embeds_one(:actualGroup, Fhir.Reference)
    embeds_one(:eligibility, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          actualNumber: float(),
          id: String.t(),
          targetNumber: float(),
          _actualNumber: Fhir.Element.t(),
          _targetNumber: Fhir.Element.t(),
          actualGroup: Fhir.Reference.t(),
          eligibility: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:actualNumber, :id, :targetNumber])
    |> cast_embed(:_actualNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_targetNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:actualGroup, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:eligibility, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:actualNumber, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:targetNumber, ~r/^[0]|([1-9][0-9]*)$/)
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
