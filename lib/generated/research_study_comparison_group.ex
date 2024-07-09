defmodule Fhir.ResearchStudyComparisonGroup do
  @moduledoc """
  A scientific study of nature that sometimes includes processes involved in health and disease. For example, clinical trials are research studies that involve people. These studies may be related to new ways to screen, prevent, diagnose, and treat disease. They may also study certain outcomes and certain groups of people by looking at data collected in the past or future.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:linkId, :string)
    field(:name, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_linkId, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:intendedExposure, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:observedGroup, Fhir.Reference)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          linkId: String.t(),
          name: String.t(),
          _description: Fhir.Element.t(),
          _linkId: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          intendedExposure: [Fhir.Reference.t()],
          modifierExtension: [Fhir.Extension.t()],
          observedGroup: Fhir.Reference.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :linkId, :name])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:intendedExposure, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:observedGroup, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:linkId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
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
