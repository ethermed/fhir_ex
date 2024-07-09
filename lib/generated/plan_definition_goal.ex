defmodule Fhir.PlanDefinitionGoal do
  @moduledoc """
  This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact. The resource is general enough to support the description of a broad range of clinical and non-clinical artifacts such as clinical decision support rules, order sets, protocols, and drug quality specifications.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:addresses, Fhir.CodeableConcept)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_one(:description, Fhir.CodeableConcept)
    embeds_many(:documentation, Fhir.RelatedArtifact)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:priority, Fhir.CodeableConcept)
    embeds_one(:start, Fhir.CodeableConcept)
    embeds_many(:target, Fhir.PlanDefinitionTarget)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          addresses: [Fhir.CodeableConcept.t()],
          category: Fhir.CodeableConcept.t(),
          description: Fhir.CodeableConcept.t(),
          documentation: [Fhir.RelatedArtifact.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          priority: Fhir.CodeableConcept.t(),
          start: Fhir.CodeableConcept.t(),
          target: [Fhir.PlanDefinitionTarget.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:addresses, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:description, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:documentation, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:priority, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:start, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:target, with: &Fhir.PlanDefinitionTarget.changeset/2)
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
