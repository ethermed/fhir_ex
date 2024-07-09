defmodule Fhir.SubstanceProtein do
  @moduledoc """
  A SubstanceProtein is defined as a single unit of a linear amino acid sequence, or a combination of subunits that are either covalently linked or have a defined invariant stoichiometric relationship. This includes all synthetic, recombinant and purified SubstanceProteins of defined sequence, whether the use is therapeutic or prophylactic. This set of elements will be used to describe albumins, coagulation factors, cytokines, growth factors, peptide/SubstanceProtein hormones, enzymes, toxins, toxoids, recombinant vaccines, and immunomodulators.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:disulfideLinkage, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:numberOfSubunits, :float)
    field(:resourceType, :string, default: "SubstanceProtein")
    embeds_many(:_disulfideLinkage, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_numberOfSubunits, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:sequenceType, Fhir.CodeableConcept)
    embeds_many(:subunit, Fhir.SubstanceProteinSubunit)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          disulfideLinkage: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          numberOfSubunits: float(),
          resourceType: String.t(),
          _disulfideLinkage: [Fhir.Element.t()],
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _numberOfSubunits: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          sequenceType: Fhir.CodeableConcept.t(),
          subunit: [Fhir.SubstanceProteinSubunit.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :disulfideLinkage,
      :id,
      :implicitRules,
      :language,
      :numberOfSubunits,
      :resourceType
    ])
    |> cast_embed(:_disulfideLinkage, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_numberOfSubunits, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:sequenceType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subunit, with: &Fhir.SubstanceProteinSubunit.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
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
