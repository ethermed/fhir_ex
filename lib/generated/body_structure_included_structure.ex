defmodule Fhir.BodyStructureIncludedStructure do
  @moduledoc """
  Record details about an anatomical structure.  This resource may be used when a coded concept does not provide the necessary detail needed for the use case.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:bodyLandmarkOrientation, Fhir.BodyStructureBodyLandmarkOrientation)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:laterality, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:qualifier, Fhir.CodeableConcept)
    embeds_many(:spatialReference, Fhir.Reference)
    embeds_one(:structure, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          bodyLandmarkOrientation: [Fhir.BodyStructureBodyLandmarkOrientation.t()],
          extension: [Fhir.Extension.t()],
          laterality: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          qualifier: [Fhir.CodeableConcept.t()],
          spatialReference: [Fhir.Reference.t()],
          structure: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:bodyLandmarkOrientation,
      with: &Fhir.BodyStructureBodyLandmarkOrientation.changeset/2
    )
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:laterality, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:qualifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:spatialReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:structure, with: &Fhir.CodeableConcept.changeset/2)
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
