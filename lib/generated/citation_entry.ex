defmodule Fhir.CitationEntry do
  @moduledoc """
  The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The Citation Resource supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:correspondingContact, :boolean)
    field(:forenameInitials, :string)
    field(:id, :string)
    field(:rankingOrder, :float)
    embeds_one(:_correspondingContact, Fhir.Element)
    embeds_one(:_forenameInitials, Fhir.Element)
    embeds_one(:_rankingOrder, Fhir.Element)
    embeds_many(:affiliation, Fhir.Reference)
    embeds_many(:contributionInstance, Fhir.CitationContributionInstance)
    embeds_many(:contributionType, Fhir.CodeableConcept)
    embeds_one(:contributor, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:role, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          correspondingContact: boolean(),
          forenameInitials: String.t(),
          id: String.t(),
          rankingOrder: float(),
          _correspondingContact: Fhir.Element.t(),
          _forenameInitials: Fhir.Element.t(),
          _rankingOrder: Fhir.Element.t(),
          affiliation: [Fhir.Reference.t()],
          contributionInstance: [Fhir.CitationContributionInstance.t()],
          contributionType: [Fhir.CodeableConcept.t()],
          contributor: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          role: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:correspondingContact, :forenameInitials, :id, :rankingOrder])
    |> cast_embed(:_correspondingContact, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_forenameInitials, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_rankingOrder, with: &Fhir.Element.changeset/2)
    |> cast_embed(:affiliation, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contributionInstance, with: &Fhir.CitationContributionInstance.changeset/2)
    |> cast_embed(:contributionType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contributor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:role, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_inclusion(:correspondingContact, [true, false])
    |> validate_format(:forenameInitials, ~r/^^[\s\S]+$$/)
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
