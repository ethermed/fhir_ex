defmodule Fhir.CitationRelatesTo do
  @moduledoc """
  The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The Citation Resource supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:citation, :string)
    field(:display, :string)
    field(:id, :string)
    field(:label, :string)
    field(:resource, :string)
    field(:type, :string)
    embeds_one(:_citation, Fhir.Element)
    embeds_one(:_display, Fhir.Element)
    embeds_one(:_label, Fhir.Element)
    embeds_one(:_resource, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:classifier, Fhir.CodeableConcept)
    embeds_one(:document, Fhir.Attachment)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:resourceReference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          citation: String.t(),
          display: String.t(),
          id: String.t(),
          label: String.t(),
          resource: String.t(),
          type: String.t(),
          _citation: Fhir.Element.t(),
          _display: Fhir.Element.t(),
          _label: Fhir.Element.t(),
          _resource: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          classifier: [Fhir.CodeableConcept.t()],
          document: Fhir.Attachment.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          resourceReference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:citation, :display, :id, :label, :resource, :type])
    |> cast_embed(:_citation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_display, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_label, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_resource, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:classifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:document, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:resourceReference, with: &Fhir.Reference.changeset/2)
    |> validate_format(:citation, ~r/^^[\s\S]+$$/)
    |> validate_format(:display, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:label, ~r/^^[\s\S]+$$/)
    |> validate_format(:resource, ~r/^\S*$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
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
