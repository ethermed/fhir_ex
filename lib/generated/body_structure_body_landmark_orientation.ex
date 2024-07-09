defmodule Fhir.BodyStructureBodyLandmarkOrientation do
  @moduledoc """
  Record details about an anatomical structure.  This resource may be used when a coded concept does not provide the necessary detail needed for the use case.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:clockFacePosition, Fhir.CodeableConcept)
    embeds_many(:distanceFromLandmark, Fhir.BodyStructureDistanceFromLandmark)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:landmarkDescription, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:surfaceOrientation, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          clockFacePosition: [Fhir.CodeableConcept.t()],
          distanceFromLandmark: [Fhir.BodyStructureDistanceFromLandmark.t()],
          extension: [Fhir.Extension.t()],
          landmarkDescription: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          surfaceOrientation: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:clockFacePosition, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:distanceFromLandmark,
      with: &Fhir.BodyStructureDistanceFromLandmark.changeset/2
    )
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:landmarkDescription, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:surfaceOrientation, with: &Fhir.CodeableConcept.changeset/2)
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
