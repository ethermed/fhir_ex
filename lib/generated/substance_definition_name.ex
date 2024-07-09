defmodule Fhir.SubstanceDefinitionName do
  @moduledoc """
  The detailed description of a substance, typically at a level beyond what is used for prescribing.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:name, :string)
    field(:preferred, :boolean)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_preferred, Fhir.Element)
    embeds_many(:domain, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:jurisdiction, Fhir.CodeableConcept)
    embeds_many(:language, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:official, Fhir.SubstanceDefinitionOfficial)
    embeds_many(:source, Fhir.Reference)
    embeds_one(:status, Fhir.CodeableConcept)
    embeds_many(:synonym, Fhir.SubstanceDefinitionName)
    embeds_many(:translation, Fhir.SubstanceDefinitionName)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          preferred: boolean(),
          _name: Fhir.Element.t(),
          _preferred: Fhir.Element.t(),
          domain: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          jurisdiction: [Fhir.CodeableConcept.t()],
          language: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          official: [Fhir.SubstanceDefinitionOfficial.t()],
          source: [Fhir.Reference.t()],
          status: Fhir.CodeableConcept.t(),
          synonym: [Fhir.SubstanceDefinitionName.t()],
          translation: [Fhir.SubstanceDefinitionName.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :name, :preferred])
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_preferred, with: &Fhir.Element.changeset/2)
    |> cast_embed(:domain, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:jurisdiction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:language, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:official, with: &Fhir.SubstanceDefinitionOfficial.changeset/2)
    |> cast_embed(:source, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:status, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:synonym, with: &Fhir.SubstanceDefinitionName.changeset/2)
    |> cast_embed(:translation, with: &Fhir.SubstanceDefinitionName.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:preferred, [true, false])
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
