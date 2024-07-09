defmodule Fhir.ImagingStudyInstance do
  @moduledoc """
  Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:number, :float)
    field(:title, :string)
    field(:uid, :string)
    embeds_one(:_number, Fhir.Element)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:_uid, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:sopClass, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          number: float(),
          title: String.t(),
          uid: String.t(),
          _number: Fhir.Element.t(),
          _title: Fhir.Element.t(),
          _uid: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          sopClass: Fhir.Coding.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :number, :title, :uid])
    |> cast_embed(:_number, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_uid, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:sopClass, with: &Fhir.Coding.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:number, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
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
