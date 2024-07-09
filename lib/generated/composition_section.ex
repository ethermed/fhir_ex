defmodule Fhir.CompositionSection do
  @moduledoc """
  A set of healthcare-related information that is assembled together into a single logical package that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. A Composition defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the Bundle (for example Patient, Practitioner, Encounter, etc.).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:title, :string)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:author, Fhir.Reference)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_one(:emptyReason, Fhir.CodeableConcept)
    embeds_many(:entry, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:focus, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:orderedBy, Fhir.CodeableConcept)
    embeds_many(:section, Fhir.CompositionSection)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          title: String.t(),
          _title: Fhir.Element.t(),
          author: [Fhir.Reference.t()],
          code: Fhir.CodeableConcept.t(),
          emptyReason: Fhir.CodeableConcept.t(),
          entry: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          focus: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()],
          orderedBy: Fhir.CodeableConcept.t(),
          section: [Fhir.CompositionSection.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :title])
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:author, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:emptyReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:entry, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:focus, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:orderedBy, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:section, with: &Fhir.CompositionSection.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
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
