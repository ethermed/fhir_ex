defmodule Fhir.ImagingSelectionInstance do
  @moduledoc """
  A selection of DICOM SOP instances and/or frames within a single Study and Series. This might include additional specifics such as an image region, an Observation UID or a Segmentation Number, allowing linkage to an Observation Resource or transferring this information along with the ImagingStudy Resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:number, :float)
    field(:subset, :string)
    field(:uid, :string)
    embeds_one(:_number, Fhir.Element)
    embeds_many(:_subset, Fhir.Element)
    embeds_one(:_uid, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:imageRegion2D, Fhir.ImagingSelectionImageRegion2D)
    embeds_many(:imageRegion3D, Fhir.ImagingSelectionImageRegion3D)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:sopClass, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          number: float(),
          subset: String.t(),
          uid: String.t(),
          _number: Fhir.Element.t(),
          _subset: [Fhir.Element.t()],
          _uid: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          imageRegion2D: [Fhir.ImagingSelectionImageRegion2D.t()],
          imageRegion3D: [Fhir.ImagingSelectionImageRegion3D.t()],
          modifierExtension: [Fhir.Extension.t()],
          sopClass: Fhir.Coding.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :number, :subset, :uid])
    |> cast_embed(:_number, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_subset, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_uid, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:imageRegion2D, with: &Fhir.ImagingSelectionImageRegion2D.changeset/2)
    |> cast_embed(:imageRegion3D, with: &Fhir.ImagingSelectionImageRegion3D.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:sopClass, with: &Fhir.Coding.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:number, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:uid, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
