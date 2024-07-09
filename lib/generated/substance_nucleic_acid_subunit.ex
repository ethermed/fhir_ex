defmodule Fhir.SubstanceNucleicAcidSubunit do
  @moduledoc """
  Nucleic acids are defined by three distinct elements: the base, sugar and linkage. Individual substance/moiety IDs will be created for each of these elements. The nucleotide sequence will be always entered in the 5’-3’ direction.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:length, :float)
    field(:sequence, :string)
    field(:subunit, :float)
    embeds_one(:_length, Fhir.Element)
    embeds_one(:_sequence, Fhir.Element)
    embeds_one(:_subunit, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:fivePrime, Fhir.CodeableConcept)
    embeds_many(:linkage, Fhir.SubstanceNucleicAcidLinkage)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:sequenceAttachment, Fhir.Attachment)
    embeds_many(:sugar, Fhir.SubstanceNucleicAcidSugar)
    embeds_one(:threePrime, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          length: float(),
          sequence: String.t(),
          subunit: float(),
          _length: Fhir.Element.t(),
          _sequence: Fhir.Element.t(),
          _subunit: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          fivePrime: Fhir.CodeableConcept.t(),
          linkage: [Fhir.SubstanceNucleicAcidLinkage.t()],
          modifierExtension: [Fhir.Extension.t()],
          sequenceAttachment: Fhir.Attachment.t(),
          sugar: [Fhir.SubstanceNucleicAcidSugar.t()],
          threePrime: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :length, :sequence, :subunit])
    |> cast_embed(:_length, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_subunit, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:fivePrime, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:linkage, with: &Fhir.SubstanceNucleicAcidLinkage.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:sequenceAttachment, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:sugar, with: &Fhir.SubstanceNucleicAcidSugar.changeset/2)
    |> cast_embed(:threePrime, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:length, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:sequence, ~r/^^[\s\S]+$$/)
    |> validate_format(:subunit, ~r/^[0]|[-+]?[1-9][0-9]*$/)
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
