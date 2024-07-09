defmodule Fhir.ClinicalUseDefinitionInteraction do
  @moduledoc """
  A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:effect, Fhir.CodeableReference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:incidence, Fhir.CodeableConcept)
    embeds_many(:interactant, Fhir.ClinicalUseDefinitionInteractant)
    embeds_many(:management, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          effect: Fhir.CodeableReference.t(),
          extension: [Fhir.Extension.t()],
          incidence: Fhir.CodeableConcept.t(),
          interactant: [Fhir.ClinicalUseDefinitionInteractant.t()],
          management: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:effect, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:incidence, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:interactant, with: &Fhir.ClinicalUseDefinitionInteractant.changeset/2)
    |> cast_embed(:management, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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
