defmodule Fhir.SubstanceSourceMaterialFractionDescription do
  @moduledoc """
  Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material that can result in or can be modified to form a substance. This set of data elements shall be used to define polymer substances isolated from biological matrices. Taxonomic and anatomical origins shall be described using a controlled vocabulary as required. This information is captured for naturally derived polymers ( . starch) and structurally diverse substances. For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a single species or infraspecies, the Herbal Drug and the Herbal preparation. For Herbal preparations, the fraction information will be captured at the Substance information level and additional information for herbal extracts will be captured at the Specified Substance Group 1 information level. See for further explanation the Substance Class: Structurally Diverse and the herbal annex.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:fraction, :string)
    field(:id, :string)
    embeds_one(:_fraction, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:materialType, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          fraction: String.t(),
          id: String.t(),
          _fraction: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          materialType: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:fraction, :id])
    |> cast_embed(:_fraction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:materialType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:fraction, ~r/^^[\s\S]+$$/)
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
