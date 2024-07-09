defmodule Fhir.SubstanceNucleicAcid do
  @moduledoc """
  Nucleic acids are defined by three distinct elements: the base, sugar and linkage. Individual substance/moiety IDs will be created for each of these elements. The nucleotide sequence will be always entered in the 5’-3’ direction.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:areaOfHybridisation, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:numberOfSubunits, :float)
    field(:resourceType, :string, default: "SubstanceNucleicAcid")
    embeds_one(:_areaOfHybridisation, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_numberOfSubunits, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:oligoNucleotideType, Fhir.CodeableConcept)
    embeds_one(:sequenceType, Fhir.CodeableConcept)
    embeds_many(:subunit, Fhir.SubstanceNucleicAcidSubunit)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          areaOfHybridisation: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          numberOfSubunits: float(),
          resourceType: String.t(),
          _areaOfHybridisation: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _numberOfSubunits: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          oligoNucleotideType: Fhir.CodeableConcept.t(),
          sequenceType: Fhir.CodeableConcept.t(),
          subunit: [Fhir.SubstanceNucleicAcidSubunit.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :areaOfHybridisation,
      :id,
      :implicitRules,
      :language,
      :numberOfSubunits,
      :resourceType
    ])
    |> cast_embed(:_areaOfHybridisation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_numberOfSubunits, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:oligoNucleotideType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:sequenceType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subunit, with: &Fhir.SubstanceNucleicAcidSubunit.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:areaOfHybridisation, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:numberOfSubunits, ~r/^[0]|[-+]?[1-9][0-9]*$/)
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
