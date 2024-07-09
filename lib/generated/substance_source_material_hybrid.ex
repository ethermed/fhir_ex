defmodule Fhir.SubstanceSourceMaterialHybrid do
  @moduledoc """
  Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material that can result in or can be modified to form a substance. This set of data elements shall be used to define polymer substances isolated from biological matrices. Taxonomic and anatomical origins shall be described using a controlled vocabulary as required. This information is captured for naturally derived polymers ( . starch) and structurally diverse substances. For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a single species or infraspecies, the Herbal Drug and the Herbal preparation. For Herbal preparations, the fraction information will be captured at the Substance information level and additional information for herbal extracts will be captured at the Specified Substance Group 1 information level. See for further explanation the Substance Class: Structurally Diverse and the herbal annex.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:maternalOrganismId, :string)
    field(:maternalOrganismName, :string)
    field(:paternalOrganismId, :string)
    field(:paternalOrganismName, :string)
    embeds_one(:_maternalOrganismId, Fhir.Element)
    embeds_one(:_maternalOrganismName, Fhir.Element)
    embeds_one(:_paternalOrganismId, Fhir.Element)
    embeds_one(:_paternalOrganismName, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:hybridType, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          maternalOrganismId: String.t(),
          maternalOrganismName: String.t(),
          paternalOrganismId: String.t(),
          paternalOrganismName: String.t(),
          _maternalOrganismId: Fhir.Element.t(),
          _maternalOrganismName: Fhir.Element.t(),
          _paternalOrganismId: Fhir.Element.t(),
          _paternalOrganismName: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          hybridType: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :id,
      :maternalOrganismId,
      :maternalOrganismName,
      :paternalOrganismId,
      :paternalOrganismName
    ])
    |> cast_embed(:_maternalOrganismId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_maternalOrganismName, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_paternalOrganismId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_paternalOrganismName, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:hybridType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:maternalOrganismId, ~r/^^[\s\S]+$$/)
    |> validate_format(:maternalOrganismName, ~r/^^[\s\S]+$$/)
    |> validate_format(:paternalOrganismId, ~r/^^[\s\S]+$$/)
    |> validate_format(:paternalOrganismName, ~r/^^[\s\S]+$$/)
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
