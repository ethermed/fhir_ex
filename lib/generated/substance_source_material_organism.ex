defmodule Fhir.SubstanceSourceMaterialOrganism do
  @moduledoc """
  Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material that can result in or can be modified to form a substance. This set of data elements shall be used to define polymer substances isolated from biological matrices. Taxonomic and anatomical origins shall be described using a controlled vocabulary as required. This information is captured for naturally derived polymers ( . starch) and structurally diverse substances. For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a single species or infraspecies, the Herbal Drug and the Herbal preparation. For Herbal preparations, the fraction information will be captured at the Substance information level and additional information for herbal extracts will be captured at the Specified Substance Group 1 information level. See for further explanation the Substance Class: Structurally Diverse and the herbal annex.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:intraspecificDescription, :string)
    embeds_one(:_intraspecificDescription, Fhir.Element)
    embeds_many(:author, Fhir.SubstanceSourceMaterialAuthor)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:family, Fhir.CodeableConcept)
    embeds_one(:genus, Fhir.CodeableConcept)
    embeds_one(:hybrid, Fhir.SubstanceSourceMaterialHybrid)
    embeds_one(:intraspecificType, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:organismGeneral, Fhir.SubstanceSourceMaterialOrganismGeneral)
    embeds_one(:species, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          intraspecificDescription: String.t(),
          _intraspecificDescription: Fhir.Element.t(),
          author: [Fhir.SubstanceSourceMaterialAuthor.t()],
          extension: [Fhir.Extension.t()],
          family: Fhir.CodeableConcept.t(),
          genus: Fhir.CodeableConcept.t(),
          hybrid: Fhir.SubstanceSourceMaterialHybrid.t(),
          intraspecificType: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          organismGeneral: Fhir.SubstanceSourceMaterialOrganismGeneral.t(),
          species: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :intraspecificDescription])
    |> cast_embed(:_intraspecificDescription, with: &Fhir.Element.changeset/2)
    |> cast_embed(:author, with: &Fhir.SubstanceSourceMaterialAuthor.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:family, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:genus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:hybrid, with: &Fhir.SubstanceSourceMaterialHybrid.changeset/2)
    |> cast_embed(:intraspecificType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:organismGeneral,
      with: &Fhir.SubstanceSourceMaterialOrganismGeneral.changeset/2
    )
    |> cast_embed(:species, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:intraspecificDescription, ~r/^^[\s\S]+$$/)
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
