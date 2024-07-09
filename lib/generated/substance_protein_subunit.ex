defmodule Fhir.SubstanceProteinSubunit do
  @moduledoc """
  A SubstanceProtein is defined as a single unit of a linear amino acid sequence, or a combination of subunits that are either covalently linked or have a defined invariant stoichiometric relationship. This includes all synthetic, recombinant and purified SubstanceProteins of defined sequence, whether the use is therapeutic or prophylactic. This set of elements will be used to describe albumins, coagulation factors, cytokines, growth factors, peptide/SubstanceProtein hormones, enzymes, toxins, toxoids, recombinant vaccines, and immunomodulators.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:cTerminalModification, :string)
    field(:id, :string)
    field(:length, :float)
    field(:nTerminalModification, :string)
    field(:sequence, :string)
    field(:subunit, :float)
    embeds_one(:_cTerminalModification, Fhir.Element)
    embeds_one(:_length, Fhir.Element)
    embeds_one(:_nTerminalModification, Fhir.Element)
    embeds_one(:_sequence, Fhir.Element)
    embeds_one(:_subunit, Fhir.Element)
    embeds_one(:cTerminalModificationId, Fhir.Identifier)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:nTerminalModificationId, Fhir.Identifier)
    embeds_one(:sequenceAttachment, Fhir.Attachment)
  end

  @type t :: %__MODULE__{
          cTerminalModification: String.t(),
          id: String.t(),
          length: float(),
          nTerminalModification: String.t(),
          sequence: String.t(),
          subunit: float(),
          _cTerminalModification: Fhir.Element.t(),
          _length: Fhir.Element.t(),
          _nTerminalModification: Fhir.Element.t(),
          _sequence: Fhir.Element.t(),
          _subunit: Fhir.Element.t(),
          cTerminalModificationId: Fhir.Identifier.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          nTerminalModificationId: Fhir.Identifier.t(),
          sequenceAttachment: Fhir.Attachment.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :cTerminalModification,
      :id,
      :length,
      :nTerminalModification,
      :sequence,
      :subunit
    ])
    |> cast_embed(:_cTerminalModification, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_length, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_nTerminalModification, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_subunit, with: &Fhir.Element.changeset/2)
    |> cast_embed(:cTerminalModificationId, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:nTerminalModificationId, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:sequenceAttachment, with: &Fhir.Attachment.changeset/2)
    |> validate_format(:cTerminalModification, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:length, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:nTerminalModification, ~r/^^[\s\S]+$$/)
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
