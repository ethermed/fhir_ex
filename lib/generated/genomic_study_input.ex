defmodule Fhir.GenomicStudyInput do
  @moduledoc """
  A GenomicStudy is a set of analyses performed to analyze and generate genomic data.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:file, Fhir.Reference)
    embeds_one(:generatedByIdentifier, Fhir.Identifier)
    embeds_one(:generatedByReference, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          extension: [Fhir.Extension.t()],
          file: Fhir.Reference.t(),
          generatedByIdentifier: Fhir.Identifier.t(),
          generatedByReference: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:file, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:generatedByIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:generatedByReference, with: &Fhir.Reference.changeset/2)
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
