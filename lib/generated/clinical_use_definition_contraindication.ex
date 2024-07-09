defmodule Fhir.ClinicalUseDefinitionContraindication do
  @moduledoc """
  A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:applicability, Fhir.Expression)
    embeds_many(:comorbidity, Fhir.CodeableReference)
    embeds_one(:diseaseStatus, Fhir.CodeableReference)
    embeds_one(:diseaseSymptomProcedure, Fhir.CodeableReference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:indication, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:otherTherapy, Fhir.ClinicalUseDefinitionOtherTherapy)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          applicability: Fhir.Expression.t(),
          comorbidity: [Fhir.CodeableReference.t()],
          diseaseStatus: Fhir.CodeableReference.t(),
          diseaseSymptomProcedure: Fhir.CodeableReference.t(),
          extension: [Fhir.Extension.t()],
          indication: [Fhir.Reference.t()],
          modifierExtension: [Fhir.Extension.t()],
          otherTherapy: [Fhir.ClinicalUseDefinitionOtherTherapy.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:applicability, with: &Fhir.Expression.changeset/2)
    |> cast_embed(:comorbidity, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:diseaseStatus, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:diseaseSymptomProcedure, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:indication, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:otherTherapy, with: &Fhir.ClinicalUseDefinitionOtherTherapy.changeset/2)
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
