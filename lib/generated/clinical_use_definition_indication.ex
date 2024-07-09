defmodule Fhir.ClinicalUseDefinitionIndication do
  @moduledoc """
  A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:durationString, :string)
    field(:id, :string)
    embeds_one(:_durationString, Fhir.Element)
    embeds_one(:applicability, Fhir.Expression)
    embeds_many(:comorbidity, Fhir.CodeableReference)
    embeds_one(:diseaseStatus, Fhir.CodeableReference)
    embeds_one(:diseaseSymptomProcedure, Fhir.CodeableReference)
    embeds_one(:durationRange, Fhir.Range)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:intendedEffect, Fhir.CodeableReference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:otherTherapy, Fhir.ClinicalUseDefinitionOtherTherapy)
    embeds_many(:undesirableEffect, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          durationString: String.t(),
          id: String.t(),
          _durationString: Fhir.Element.t(),
          applicability: Fhir.Expression.t(),
          comorbidity: [Fhir.CodeableReference.t()],
          diseaseStatus: Fhir.CodeableReference.t(),
          diseaseSymptomProcedure: Fhir.CodeableReference.t(),
          durationRange: Fhir.Range.t(),
          extension: [Fhir.Extension.t()],
          intendedEffect: Fhir.CodeableReference.t(),
          modifierExtension: [Fhir.Extension.t()],
          otherTherapy: [Fhir.ClinicalUseDefinitionOtherTherapy.t()],
          undesirableEffect: [Fhir.Reference.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:durationString, :id])
    |> cast_embed(:_durationString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:applicability, with: &Fhir.Expression.changeset/2)
    |> cast_embed(:comorbidity, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:diseaseStatus, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:diseaseSymptomProcedure, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:durationRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:intendedEffect, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:otherTherapy, with: &Fhir.ClinicalUseDefinitionOtherTherapy.changeset/2)
    |> cast_embed(:undesirableEffect, with: &Fhir.Reference.changeset/2)
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
