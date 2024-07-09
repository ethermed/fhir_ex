defmodule Fhir.EvidenceReportSection do
  @moduledoc """
  The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:mode, :string)
    field(:title, :string)
    embeds_one(:_mode, Fhir.Element)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:author, Fhir.Reference)
    embeds_one(:emptyReason, Fhir.CodeableConcept)
    embeds_many(:entryClassifier, Fhir.CodeableConcept)
    embeds_many(:entryQuantity, Fhir.Quantity)
    embeds_many(:entryReference, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:focus, Fhir.CodeableConcept)
    embeds_one(:focusReference, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:orderedBy, Fhir.CodeableConcept)
    embeds_many(:section, Fhir.EvidenceReportSection)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          mode: String.t(),
          title: String.t(),
          _mode: Fhir.Element.t(),
          _title: Fhir.Element.t(),
          author: [Fhir.Reference.t()],
          emptyReason: Fhir.CodeableConcept.t(),
          entryClassifier: [Fhir.CodeableConcept.t()],
          entryQuantity: [Fhir.Quantity.t()],
          entryReference: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          focus: Fhir.CodeableConcept.t(),
          focusReference: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()],
          orderedBy: Fhir.CodeableConcept.t(),
          section: [Fhir.EvidenceReportSection.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :mode, :title])
    |> cast_embed(:_mode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:author, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:emptyReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:entryClassifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:entryQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:entryReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:focus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:focusReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:orderedBy, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:section, with: &Fhir.EvidenceReportSection.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:mode, ~r/^[^\s]+( [^\s]+)*$/)
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
